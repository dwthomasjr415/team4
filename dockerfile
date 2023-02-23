
FROM python:3.8-slim-buster

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python", "-m", "flask", "--host=0.0.0.0"]
=======
FROM python
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "-m", "flash", "run", "--host=0.0.0.0"]
