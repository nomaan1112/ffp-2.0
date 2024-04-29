FROM python:3.10

WORKDIR /app

COPY . /app
EXPOSE 8080
RUN pip install -r requirements.txt
CMD ["gunicorn", "--workers=5", "--bind", "0.0.0.0:8080", "app:app"]