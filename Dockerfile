FROM python:3.7.13

EXPOSE 8501

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
# These commands install the cv2 dependencies that are normally present on the local machine, but might be missing in your Docker container causing the issue.

RUN git clone https://github.com/zhan860127/streamlitAIFREE.git .

RUN pip install -r requirements.txt


HEALTHCHECK --interval=5s --timeout=3s \
  CMD ["streamlit", "run", "detect.py", "--server.port=8501", "--server.address=0.0.0.0"]

ENTRYPOINT ["streamlit", "run", "detect.py", "--server.port=8501", "--server.address=0.0.0.0"]