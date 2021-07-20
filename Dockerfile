FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
COPY script.sh /
RUN chmod 755 /script.sh
ADD . /code/