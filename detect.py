import streamlit as st
import numpy as np
from camera import write_button
from main import analyzeses
from app import create_webrtc
# css injection


def anaylzes(a, b):
    data = ["30%", "30%", "35%", "This is a purely informational message", a]
    return data


def returnst():
    return st


def _max_width_():

    st.markdown(
        """
    <style>
    .css-1cpxqw2 {{
        font-weight: 500;
        border: 1px solid #003366;
    }}
    .css-d4hl0i{{
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
    st.session_state['refresh'] = False
    st.session_state['choose'] = 0

col11, col22= st.columns([6 , 4])
col22.image("./AFT_HTG_LOGOS_V3.png", use_column_width='auto')
col11.title("污泥評估診斷系統")
if 'key' in st.session_state:
    data = [st.session_state['key'], st.session_state['image'],
            st.session_state['upload'], st.session_state['choose']==1]
    data1 = [st.session_state['key2'], st.session_state['image2'],
            st.session_state['upload2'], st.session_state['choose']==2]
    choose = st.session_state['choose']
    col1, col2 = st.columns(2,gap="large")
    data = write_button(data, st, col1, 1)
    data1 = write_button(data1, st, col2, 10)

    image = None
    image = create_webrtc(None,None)

    if choose == 1:
        st.markdown(
            f"""<style>
            div[data-testid="stHorizontalBlock"] > div:first-of-type >
            div>div>div:last-of-type>div>button 
            {{background-color: rgba(255, 255, 0, 0.5);}}""",unsafe_allow_html=True,)
    elif choose == 2 :
        st.markdown(
            f"""<style>
            div[data-testid="stHorizontalBlock"] > div:last-of-type >
            div>div>div:last-of-type>div>button 
            {{background-color: rgba(255, 255, 0, 0.5);}}""",unsafe_allow_html=True,)


    if image is not None:
        st.session_state['refresh'] = True
        if choose == 1 :
            data[2]=np.copy(image)
        elif choose == 2:
            data1[2]=np.copy(image)

    if col1.button("choose",key="a"):
        choose = 1
        st.session_state['refresh'] = True
    if col2.button("choose",key="b"):
        choose = 2
        st.session_state['refresh'] = True
    st.session_state['choose'] = choose

    # if col1.button("明視野",key="a"):
    #     if data[1] is not None:
            
    #         data[2]=np.copy(data[1])
    #         st.session_state['refresh']=True

    # if col2.button("get",key="b",disabled=(image is None)):
    #     if data1[1] is not None:
    #         data1[2]=np.copy(data1[1])
    #         st.session_state['refresh']=True




    #print(data)
    # print(data1)
    st.session_state['key'] = data[0]
    st.session_state['key2'] = data1[0]
    st.session_state['image'] = data[1]
    st.session_state['upload'] = data[2]
    st.session_state['image2'] = data1[1]
    st.session_state['upload2'] = data1[2]



    if st.session_state['refresh'] :
        st.session_state['refresh'] = False
        st.experimental_rerun()


    if st.button('analyze', disabled=(st.session_state['upload'] 
    is None or st.session_state['upload2'] is None)):
        st.markdown("#### Result")
        col1.empty()
        col2.empty()

        col12, col22, col32, col42 = st.columns(4)
        result = analyzeses(
            st.session_state['upload'], st.session_state['upload2'])
        st.image(result[0])
        col12.metric(label="緊緻汙泥", value=result[1])
        col22.metric(label="蓬鬆汙泥", value=result[2])
        col32.metric(label="清澈區域", value=result[3])
        col42.metric(label="其他", value=result[4])
        st.info(result[5], icon="ℹ️")