FROM ppc64le/python:3

RUN mkdir -p /usr/src/app/requirements
WORKDIR /usr/src/app

ADD . /usr/src/app
RUN pip3 install cython
#RUN pip3 install Cython-0.27.1-cp27-cp27mu-linux_ppc64le.whl
RUN ["python3", "setup.py", "develop"]

EXPOSE 5000
CMD ["./appRun.sh", "start"]
