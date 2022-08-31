import streamlit as st




def write_button(data,st1,col1,key):
    if(key==1):
        col1.subheader("亮視野")
    elif(key==10):
        col1.subheader("暗視野")
    if data[0]!=True :
        uploaded_file = col1.file_uploader("choose image from local",key=key)
        data[2]=uploaded_file
    if col1.button('使用攝像頭',key=key+1):
        col1.empty()
        data[0] = True
        return data

    if data[0]:
        image = col1.camera_input("Take a picture",key=key+2)
        data[2] = image
        if image != None:
            if col1.button('upload camera',key=key+3):
                data[2] = data[1]
                data[0] = False
                data[1] = None
                if col1.button('cancel',key=key+4):
                    col1.empty()
                    data[1] = None
                    data[2] = None
                elif col1.button('done',key=key+5):
                    data[1] = None
        return data

    else:
        data[1] = None



    if data[2] != None:
        col1.image(data[2])
        # if col1.button('clear',key=key+6):
        #     uploaded_file=None
        #     data[2] = None
        #     st1.experimental_rerun()
        #     return data
    return data