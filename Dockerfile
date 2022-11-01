FROM python:3.10.4

EXPOSE 8501

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/zhan860127/streamlitAIFREE.git .

RUN pip install -r requirements.txt

ENTRYPOINT ["streamlit", "run", "detect.py", "--server.port=8501", "--server.address=0.0.0.0"]