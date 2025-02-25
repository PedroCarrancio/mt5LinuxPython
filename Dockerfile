FROM python:3.10.16-slim-bullseye
WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt 
EXPOSE 3000 8080
RUN apt-get update
RUN apt install -y wget
RUN apt install -y sudo
RUN apt-get update && apt-get install -y lsb-release && apt-get clean all
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8080","--reload"]




