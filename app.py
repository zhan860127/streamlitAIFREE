import threading
from typing import Union

import av
import numpy as np
import streamlit as st

from streamlit_webrtc import VideoTransformerBase, webrtc_streamer, WebRtcMode


def create_webrtc(col, key):
    class VideoTransformer(VideoTransformerBase):
        # `transform()` is running in another thread,
        # then a lock object is used here for thread-safety.
        frame_lock: threading.Lock
        in_image: Union[np.ndarray, None]
        out_image: Union[np.ndarray, None]

        def __init__(self) -> None:
            self.frame_lock = threading.Lock()
            self.in_image = None
            self.out_image = None

        def recv(self, frame: av.VideoFrame) -> np.ndarray:
            in_image = frame.to_image()

            # out_image = in_image[:, ::-1, :]
            # Simple flipping for example.
            with self.frame_lock:
                self.in_image = in_image
            # self.out_image = out_image
    container = st.container()

    ctx = webrtc_streamer(
        key="snapshot"+str(key), video_processor_factory=VideoTransformer,
        async_processing=True, rtc_configuration={  # Add this config
        "iceServers": [{"urls": ["stun:stun.l.google.com:19302"]}]
        },
        media_stream_constraints={"video": True}, mode=WebRtcMode.SENDRECV)

    if ctx.video_transformer:
        if container.button("Snapshot"):
            with ctx.video_transformer.frame_lock:
                in_image = ctx.video_transformer.in_image
                # st.image(in_image)

                # col.image(out_image)
                return in_image
    return None
