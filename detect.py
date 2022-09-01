from xmlrpc.client import FastParser
import streamlit as st
import numpy as np
import threading
from camera import write_button
from main import analyzeses
# css injection


def anaylzes(a, b):
    data = ["30%", "30%", "35%", "This is a purely informational message", a]
    return data


def returnst():
    return st


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
init = True
i = 0
if 'key' not in st.session_state:
    st.session_state['key'] = False
    st.session_state['key2'] = False
    st.session_state['image'] = None
    st.session_state['upload'] = None
    st.session_state['image2'] = None
    st.session_state['upload2'] = None
    st.session_state['refresh'] = True

st.image("./AF.png", width=100)
st.title("AI FREE TEAM Dashboard Demo")
data = [st.session_state['key'],
        st.session_state['image'], st.session_state['upload']]
data1 = [st.session_state['key2'],
         st.session_state['image2'], st.session_state['upload2']]

col1, col2 = st.columns(2)
data = write_button(data, st, col1, 1)
data1 = write_button(data1, st, col2, 10)


st.session_state['key'] = data[0]
st.session_state['key2'] = data1[0]
st.session_state['image'] = data[1]
st.session_state['upload'] = data[2]
st.session_state['image2'] = data1[1]
st.session_state['upload2'] = data1[2]


if st.session_state['refresh'] and st.session_state['key']:
    st.session_state['refresh'] = False
    st.experimental_rerun()


if st.button('analyze', disabled=(type(st.session_state['upload']) != np.ndarray or type(st.session_state['upload2']) != np.ndarray)):
    st.markdown("#### Result")
    col1.empty()
    col2.empty()

    col12, col22, col32 = st.columns(3)
    result = analyzeses(
        st.session_state['upload'], st.session_state['upload2'])
    st.image(result[0])
    col12.metric(label="緊緻汙泥", value=result[1])
    col22.metric(label="蓬鬆汙泥", value=result[2])
    col32.metric(label="清澈區域", value=result[3])
    st.info(result[4], icon="ℹ️")
