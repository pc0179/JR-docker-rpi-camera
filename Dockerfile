FROM arm32v7/debian:latest

ENV LD_LIBRARY_PATH=/opt/vc/lib

# For some unfathomable reason this is needed for picamera install to work!
ENV READTHEDOCS=True

# Set in container
ENV TZ=Europe/London

RUN apt-get -y update 
# && apt-get -y upgrade \
# && apt-get -y install apt-utils \
# && apt-get -y install sudo \
# && apt-get -y install tzdata \
# && apt-get -y install build-essential \
# && apt-get -y install python-pip

#  && apt-get -y install lsb-release \
# && apt-get -y install ctags \
# && apt-get -y install cmake \
# && apt-get -y install git \
# && apt-get -y install snapd \
# && apt-get -y install vim

RUN mkdir /app
COPY ./src/* /app/

WORKDIR /app
#RUN tar -xf userland.tar

#WORKDIR /app/userland
#RUN ./buildme

WORKDIR /app

#RUN unlink /usr/bin/python
#RUN ln -sv /usr/bin/python3.7 /usr/bin/python
RUN apt-get -y install python3-pip
RUN pip3 install picamera

EXPOSE 8081

VOLUME ["/data"]

# Use this to enter container for interactive work, e.g.
# to run demo.py in foreground to see what it is up to
#
CMD ["/bin/bash"]

# Use this in final image
#
# CMD ["/app/start.sh"]
