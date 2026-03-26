FROM python:3.9-slim

RUN pip install streamlit

WORKDIR /app

COPY . /app

EXPOSE 8501

CMD ["streamlit","run","extract.py"]
