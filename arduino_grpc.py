import serial
from time import sleep

arduinoData = serial.Serial('COM3', 9600, timeout=5)

def ledOn():
	arduinoData.write(b'1')
	
def ledOff():
	arduinoData.write(b'0')
	
i = 0
print("start")
while i < 10:
	print(i)
	ledOn()
	sleep(1)
	ledOff()
	sleep(1)
	i +=1
print("end")
