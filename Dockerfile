FROM python:latest

WORKDIR /src
COPY requirements.txt .
RUN pip install --no-vache-dir --upgrade -r requirements.txt
COPY ./app app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]