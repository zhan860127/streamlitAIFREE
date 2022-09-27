import streamlit as st
import numpy as np
from camera import write_button
from main import analyzeses
from app import create_webrtc
import sys
from streamlit.web import cli as stcli


if __name__ == '__main__':
    sys.argv = ["streamlit", "run", "detect.py"]
    sys.exit(stcli.main())
