FROM python:3.12

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=app.py
ENV FLASK_RUN_PORT=8080
EXPOSE 8080

CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
