FROM python:3-slim

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

EXPOSE 8080

ENV FLASK_ENV PRODUCTION
ENTRYPOINT ["python3"]
CMD ["-m", "clien_bot"]
