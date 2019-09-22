Práctica 4

Nombres:
-Cuautle Torres Ricardo Rodrigo
-German Lopez Rodrigo
-Lemuz Fuentes Omar

La práctica consistió en conocer la configuración, la programación y el uso del módulo UART (Universal Asynchronous Receiver Transmitter) de la raspberry con el objetivo de poder implementar comunicaciones de tipo serial, particularmente bajo el estándar RS-232.

Los pasos que se realizaron fueron los siguientes:
	1.- Se ubicaron las terminales UART TXD y UART RXD.
	2.- Se ubico el puerto COMx en donde se conecto el dispositivo.
	3.- Se configuro el emulador de terminal en serie Termite, estableciendo el puerto COMx y una velocidad de transmisión de 115200 baudios.
	4.- En la raspberry se modifico el archivo /boot/config.txt agregando las siguientes líneas: 
	# Enable UART 
	enable uart=1
	5.- Se ejecuto el emulador de terminal serie en la Raspberry para enviar y poder recibir los datos de la comunicación UART configurada.