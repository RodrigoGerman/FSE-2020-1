import argparse
import os

parser = argparse.ArgumentParser()
parser.add_argument("file", help="Nombre de archivo a crear")
parser.add_argument("number", help="Numero de interacciones")
args = parser.parse_args()

listUsb = os.listdir("/media/pi")
print(listUsb)

if "USB" in listUsb:
	print("USB Disponible. \nEmpezando Escritura de Datos")
	file = open("/media/pi/USB/"+args.file+".csv","w")
	for x in range(0,int(args.number)+1):
		file.write(str(x) + ",Hola USB,data" + str(x) + "\n")
	
	file.close()
	print("Archivo Escrito con Exito en USB!!.")

else:
	print("USB No Disponible")
