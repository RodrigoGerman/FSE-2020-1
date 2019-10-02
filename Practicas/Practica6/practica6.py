import argparse
import os
import time
import SDL_DS1307

parser = argparse.ArgumentParser()
parser.add_argument("file", help="Nombre de archivo a crear")
parser.add_argument("time", help="Tiempo de ejecucion [seg]")
args = parser.parse_args()

listUsb = os.listdir("/media/pi")

ds1307 = SDL_DS1307.SDL_DS1307(1, 0x68)
ds1307.write_now()

if "USB" in listUsb:
	file = open("/media/pi/USB/"+args.file+".txt","w")
	count = 0
	while count <= int(args.time):
		file.write(str(ds1307.read_datetime())+"\n")
		time.sleep(1)
		count+=1
	file.close()

else:
	print("USB No Disponible")
