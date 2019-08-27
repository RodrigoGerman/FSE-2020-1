{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Pr\'e1ctica 2\
Cuestionario \
\
(a) \'bfCu\'e1l es la diferencia entre las instrucciones swi 0x0, svc #0 y bx lr?\
	svc es una llamada a una interrupci\'f3n donde el valor que se le pasa puede o no tener un 	significado para el sistema operativo; en este caso para Linux, el valor 0 ser\'eda la interrupci\'f3n 	predeterminada.\
	Si comparamos svc con swi, nos encontramos con instrucciones cuyo mnem\'f3nico es distinto, 	pero realizan exactamente la misma tarea, s\'f3lo que podemos considerar a swi como una 	versi\'f3n antigua de de svc.\
	bx lr almacena la direcci\'f3n inicial del programa, por lo que podr\'eda resultar ser equivalente a un 	return  0 en un lenguaje de nivel m\'e1s alto; no es una interrupci\'f3n.\
\
(b) \'bfA qu\'e9 se refiere la instrucci\'f3n .balign 4 en el lenguaje  ensamblador para ARM?\
	\
	Esta directiva nos permite cumplir con el alineamiento de una instrucci\'f3n o dato, es decir, 	fuerza  a que inmediatamente despu\'e9s despu\'e9s de que la directiva se encuentre en una 	direcci\'f3n de memoria es un m\'faltiplo de 4. \
\
(c) \'bfCu\'e1ntas instrucciones en lenguaje ensamblador hay para arquitectura ARM11 y cuantos modos de direccionamiento hay (menci\'f3nelos)?\
\
	La arquitectura ARM11 es capaz de manejar 4 tipos de direccionamiento diferentes, que son los 	siguientes:\
\
	- Direccionamiento inmediato: En este tipo de direccionamiento, el operando fuente es una 	constante, formando parte de la instrucci\'f3n.\
	- Direccionamiento inmediato con rotaci\'f3n: Se trata de una variante del anterior en la cual se 	permiten operaciones intermedias sobre registros.\
	- Direccionamiento a memoria, sin actualizar el registro puntero: Es la forma m\'e1s sencilla de 	aplicar direccionamiento y es capaz de admitir hasta 4 variables. A\'f1ade o quita un valor 	inmediato al registro dado para calcular la direcci\'f3n.\
	- Direccionamiento a memoria, actualizando registro puntero: En este modo de 	direccionamiento, el registro que genera la direcci\'f3n se actualiza con la propia direcci\'f3n.\
	\
\
https://stackoverflow.com/questions/11277652/what-is-the-meaning-of-align-an-the-start-of-a-section\
https://riuma.uma.es/xmlui/bitstream/handle/10630/10214/LibroDePracticas.pdf?sequence=1&isAllowed=y\
 }