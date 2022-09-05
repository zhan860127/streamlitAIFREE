import streamlit as st

from streamlit.components.v1 import html
import numpy as np
import streamlit.components.v1 as components
from app import create_webrtc
HtmlFile = open("index.html", 'r', encoding='utf-8')
source_code = HtmlFile.read()
# print(source_code)


my_js = """var videoElement = document.querySelector('video');
console.log(videoElement)
"""

# Wrapt the javascript as html code
my_html = f"<script>{my_js}</script>"

# Execute your app


def write_button(data, st1, col1, key):
    if(key == 1):
        col1.subheader("亮視野")
    elif(key == 10):
        col1.subheader("暗視野")
    if data[2] is not None:

        col1.image(data[2])

    if data[0] != True:
        uploaded_file = col1.file_uploader("choose image from local", key=key)
        data[2] = uploaded_file

    if col1.button('使用攝像頭', key=key+1):
        data[0] = True
        return data

    if data[0]:
        # print("data2"+str(data[2]))

        image = create_webrtc(col1, str(key+9))
        # print(image)
        if type(image) == np.ndarray:
            data[2] = np.copy(image)
        if type(data[2]) == np.ndarray:
            # col1.image(data[1])
            if data[2] is not None:
                if col1.button('upload camera', key=key+3):
                    print("####")
                    print(data)
                    print("####")
                    if col1.button('done', key=key+4):
                        data[0] = False
                        st1.experimental_rerun()
                else:
                    return data

            #         # html(my_html)

            #         data[0] = False
            #         return data
            #         if col1.button('cancel', key=key+4):
            #             col1.empty()
            #             data[1] = None
            #             data[2] = None
            #         elif col1.button('done', key=key+5):
            #             data[1] = None

        # if col1.button('clear',key=key+6):
        #     uploaded_file=None
        #     data[2] = None
        #     st1.experimental_rerun()
        #     return data

    return data
