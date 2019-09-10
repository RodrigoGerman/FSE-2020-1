Práctica 3

Nombres:
-Cuautle Torres Ricardo Rodrigo
-German Lopez Rodrigo
-Lemuz Fuentes Omar


Cuestionario 


(a) Cuantas formas de configurar y programar hay disponibles en la raspberry pi?

Es posible configurar y programar la raspberry pi de diferentes formas y a través de diferentes elementos. Es posible decir que los más importantes son las interfaces de comunicaciones I2C, SPI y UART, que nos permiten establecer comunicación entre diferentes periféricos internos o externos a la tarjeta de desarrollo y pueden resultar muy útiles para elaborar diferentes aplicaciones dependiendo el enfoque que se les dé.

(b) Que es el sistema de archivos sysfs?

Es un sistema de ficheros virtual que proporciona el kernel 2.6 de Linux. Básicamente, Sysfs proporciona información de los dispositivos del sistema (hardware) y sus controladores desde el modelo de dispositivos del núcleo hacia el espacio del usuario, permitiendo además configurar alguno de sus parámetros.

Para los controladores de dispositivos y los dispositivos, se pueden crear atributos. Los atributos son simples ficheros. Se estipula que sólo deben contener un valor o permitir que un solo valor se fije (a diferencia de algunos ficheros en /procfs, que necesitan un análisis intenso). Estos ficheros están incluidos en el subdirectorio del controlador correspondiente al dispositivo. Es posible crear subdirectorios con atributos para agruparlos.


(c) Cuáles son los lenguajes de programación más comunes para configurar y programar los GPIO.?

La Raspberry Pi permite programar sus GPIO utilizando una gran multitud de herramientas con diversos lenguajes de programación:

Lenguajes 	  Librerias
  Python   -   RPI.GPIO
  C 	   -   wiringPI, pigpio, sysfs
  Scratch  -   ScratchGPIO, RpiScratchIO
  BASIC    -   RTB


Tambien permite configurar y programar los GPIO desde la consola utilizando sencillos scripts para bash y comandos sobre ficheros, esto gracias a que el sistema operativo tratará a todos los elementos, incluido el hardware, como un fichero.


REFERENCIAS:
http://recursostic.educacion.es/observatorio/web/ca/software/software-general/549-raul-juncos-
https://es.wikipedia.org/wiki/Sysfs
https://comohacer.eu/gpio-raspberry-pi/
