FROM ubuntu:latest
RUN apt-get update

RUN apt-get install -y -q build-essential python-pip python-dev python-simplejson git
RUN pip install --upgrade pip
RUN pip install --upgrade virtualenv

RUN mkdir deployment
RUN git clone https://github.com/LeeDongJin93/restful-api-python-flask.git /deployment/
COPY . /deployment/
RUN virtualenv /deployment/env/
RUN /deployment/env/bin/pip install flask
ENV PORT 8080
EXPOSE 8080
WORKDIR /deployment
CMD env/bin/python app.py
