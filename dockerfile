FROM python
RUN pip install pyserial 
&& apt-get update
&& apt-get install -y git
&& git clone https://github.com/kamilo116/tmp-repo.git .
CMD python arduino_grpc.py


docker run -dit pa1
# docker build  -v /dev/buc/usb:/dev/buc/usb pa1 
# https://github.com/opsxcq/docker-dev-arduino/blob/master/Dockerfile
