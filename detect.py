from xmlrpc.client import FastParser
import streamlit as st
import numpy as np
import threading
# css injection


def _max_width_():

    st.markdown(
        f"""
    <style>
    .css-1cpxqw2 {{
        font-weight: 500;
        border: 1px solid #003366;
    }}
    .css-keje6w{{
        border-color: blue;
        padding:25px;
        border-style:solid;
        border-radius: 25px;
    }}
    <style>
    """,
        unsafe_allow_html=True,
    )


_max_width_()

start_run = True
init=True

i = 0
if 'key' not in st.session_state:
    st.session_state['key'] = False
    st.session_state['image'] = None
    st.session_state['upload'] = None

col1, col2 = st.columns(2)
col2.write("123")
if st.session_state['key']!=True:
    
    uploaded_file = col1.file_uploader("choose image from local")
    st.session_state['upload']=uploaded_file
if col1.button('使用攝像頭'):
    col1.empty()
    i = i+1
    start_run = True
    init=False
    st.session_state['key'] = True
    st.experimental_rerun()

if st.session_state['key']:
    image = col1.camera_input("Take a picture")
    st.session_state['image'] = image
    if image != None:
        if col1.button('upload camera'):
            st.session_state['upload'] = st.session_state['image']
            st.session_state['key'] = False
            st.session_state['image'] = None
            if col1.button('cancel'):
                col1.empty()
                col2.empty()
                st.session_state['image'] = None
                st.session_state['upload'] = None
                col2.empty()
                st.empty()
            elif col1.button('done'):
                st.session_state['image'] = None

else:
    st.session_state['image'] = None



if st.session_state['upload'] != None:
    col1.image(st.session_state['upload'])
    if col1.button('clear'):
        uploaded_file=None
        st.session_state['upload'] = None
        st.experimental_rerun()
