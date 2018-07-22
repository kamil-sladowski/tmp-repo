FROM python
RUN pip install pyserial 
&& apt-get update
&& apt-get install -y git
&& git clone https://github.com/kamilo116/tmp-repo.git .
CMD python arduino_grpc.py


docker run -t -d -i --device=/dev/tty python bash
# 
# https://github.com/opsxcq/docker-dev-arduino/blob/master/Dockerfile
#==================
#docker run -t -d -i --device=/dev/tty --name='pa2' python bash
#docker exec -it pa2 bash
#cd /home
#git clone https://github.com/kamilo116/tmp-repo.git .
#pip install pyserial
#apt-get install arduino
#pip install ino
#python 


#apt-get update
#apt-get install -y build-essential picocom \
#    gcc-avr \
##    avr-libc \
 #   avrdude \
#	arduino-core
