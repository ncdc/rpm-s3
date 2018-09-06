FROM centos:7

RUN yum update -y 
RUN yum install -y deltarpm python-deltarpm
RUN yum install -y rpm-sign

RUN curl "https://bootstrap.pypa.io/get-pip.py" | python

ADD . /rpm-s3
WORKDIR /rpm-s3

RUN pip install -r requirements.txt

