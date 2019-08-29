Práctica 2

Nombres:
-Cuautle Torres Ricardo Rodrigo
-German Lopez Rodrigo
-Lemuz Fuentes Omar

Cuestionario 

(a) ¿Cuál es la diferencia entre las instrucciones swi 0x0, svc #0 y bx lr?

 - svc es una llamada a una interrupción donde el valor que se le pasa puede o no tener un significado para el sistema
 operativo; en este caso para Linux, el valor 0 sería la interrupción predeterminada.
 
 - Si comparamos svc con swi, nos encontramos con instrucciones cuyo mnemónico es distinto, pero realizan exactamente la
 misma tarea, sólo que podemos considerar a swi como una versión antigua de de svc.

 - bx lr almacena la dirección inicial del programa, por lo que podría resultar ser equivalente a un return 0 en un lenguaje
 de nivel más alto; no es una interrupción.

(b) ¿A qué se refiere la instrucción .balign 4 en el lenguaje  ensamblador para ARM?

 - Esta directiva nos permite cumplir con el alineamiento de una instrucción o dato, es decir, fuerza a que inmediatamente
 después después de que la directiva se encuentre en una dirección de memoria es un múltiplo de 4. 

(c) ¿Cuántas instrucciones en lenguaje ensamblador hay para arquitectura ARM11 y cuantos modos de direccionamiento hay (menciónelos)?

 - La arquitectura ARM11 es capaz de manejar 4 tipos de direccionamiento diferentes, que son los siguientes:
 
	-> Direccionamiento inmediato: En este tipo de direccionamiento, el operando fuente es una constante, formando parte
	de la instrucción.
	
	-> Direccionamiento inmediato con rotación: Se trata de una variante del anterior en la cual se permiten operaciones
	intermedias sobre registros.
	
	-> Direccionamiento a memoria, sin actualizar el registro puntero: Es la forma más sencilla de 	aplicar
	direccionamiento y es capaz de admitir hasta 4 variables. Añade o quita un valor inmediato al registro dado para 
	calcular la dirección.
	
	-> Direccionamiento a memoria, actualizando registro puntero: En este modo de 	direccionamiento, el registro que
	genera la dirección se actualiza con la propia dirección.
	
(c) En el set de instrucciones de ARM Extendido se tiene alrededor de 187 instrucciones, sin embargo muchas de estas se pueden
“combinar” con 15 códigos de condición las cuales verifican las banderas y si cumple con la condición seleccionada la
instrucción será ejecutada.
Existen varios modos de direccionamiento para los ARM, se tienen los siguientes:
	Offset
	Offset Pre-indexado
	Offset Post-indexado
	Offset Inmediato
	Offset de Registro
	Carga de Bloque
	Guardado de Bloque
	No indexado
	

REFERENCIAS:
 - https://stackoverflow.com/questions/11277652/what-is-the-meaning-of-align-an-the-start-of-a-section
 - https://riuma.uma.es/xmlui/bitstream/handle/10630/10214/LibroDePracticas.pdf?sequence=1&isAllowed=y
 
