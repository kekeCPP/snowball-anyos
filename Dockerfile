# syntax=docker/dockerfile:1

FROM ubuntu:22.04 as base
# FROM python:latest
# ARG UID
WORKDIR /app
COPY . .
RUN apt-get update
RUN apt-get install wget -y
RUN wget https://download.virtualbox.org/virtualbox/7.0.6/virtualbox-7.0_7.0.6-155176~Ubuntu~jammy_amd64.deb
RUN apt install ./virtualbox-7.0_7.0.6-155176~Ubuntu~jammy_amd64.deb -y
RUN apt-get install python3 -y
RUN apt-get install pip -y
RUN chmod 777 -R ./scripts
# ENV USER_ID=${UID}


# CMD ["/bin/bash", "-c", "python3 ./src/snowball.py ${USER_ID}"]
ENTRYPOINT ["python3", "/app/src/snowball.py"]
# CMD ["/bin/bash", "-c", "python3 ./src/snowball.py ${USER_ID} Alpine"]
# CMD ["/bin/bash"]
