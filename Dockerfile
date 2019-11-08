FROM python:3

COPY requirements.txt requirements.txt
COPY app.py app.py

RUN pip install -r requirements.txt --proxy 172.16.10.20:8080
ENV PORT=8080

EXPOSE 8080
ENTRYPOINT [ "python", "app.py" ]

#docker run -it — cpus 1 — memory 512Mb helloworld

