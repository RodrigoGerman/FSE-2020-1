import serial

port = serial.Serial ("/dev/ttyS0",baudrate=115200,timeout=1)

while(True):
	voltaje = port.read(6).strip()
	if voltaje != b'':
		voltaje = int(voltaje)
		kelvin = voltaje/10
		celsius = round(kelvin - 273.15,2)
		port.write(("Voltaje: "+ str(voltaje) + "\tT(k): " + str(kelvin) + "\tT(C): "+ str(celsius)+ '\n').encode())


