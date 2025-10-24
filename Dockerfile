FROM python:3.9-slim
WORKDIR /app
COPY Hector.py .
CMD ["python", "Hector.py"]