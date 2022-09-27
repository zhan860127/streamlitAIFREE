import sys
from streamlit.web import cli as stcli
import cv2 as cv
from main import analyzeses
from PIL import Image
import numpy as np

def test_streamlit():
    print("hello")

def test_AImodel():
    a =  np.array(Image.open(r".//test_sample.//Sample_01_B.jpg"))
    b =  np.array(Image.open(r".//test_sample.//Sample_01_D.jpg"))
    analyzeses(a,b)

