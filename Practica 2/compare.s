.data
.text
.global _start

_start:
	/* Inicializamos variables. */
	mov	r3,#14		/* r3 <- 14	*/
	mov	r4,#7		/* r4 <- 7	*/
	cmp	r3,r4		/* r3 - r4	*/
	beq	eti0		/* if r3 == r4	*/
	bmi	eti1		/* if r4 > r3	*/
	bpl	eti2		/* if r3 > r4	*/
	bx 	lr		

eti0:	mov r7,#4	 	/* Escribir en la llamada al sistema. */
	mov r0,#1		/* Llamada a STDOUT. */
	ldr r1,=message1	/* Direccion de memoria que contiene el mensaje a imprimir*/
	mov r2,#16		/* Tamaño del mensaje a imprimir. */
	svc #0			/* Llamada a una interrupción, donde el 0 puede tener o no significado por el sistema operativo. */
	mov r7,#1		/* Cerrar Flujo de escritura. */
	mov r0,#0		/* r0 <- 0	*/
	svc #0			/* Llamada a una interrupción, donde el 0 puede tener o no significado por el sistema operativo. */

eti1:	mov r7,#4		/* Escribir en la llamada al sistema. */
	mov r0,#1		/* Llamada a STDOUT. */
	ldr r1,=message2	/* Direccion de memoria que contiene el mensaje a imprimir*/
	mov r2,#18		/* Tamaño del mensaje a imprimir. */
	svc #0			/* Llamada a una interrupción, donde el 0 puede tener o no significado por el sistema operativo. */
	mov r7,#1		/* Cerrar Flujo de escritura. */
	mov r0,#0		/* r0 <- 0	*/
	svc #0			/* Llamada a una interrupción, donde el 0 puede tener o no significado por el sistema operativo. */

eti2:	mov r7,#4		/* Escribir en la llamada al sistema. */
	mov r0,#1		/* Llamada a STDOUT. */
	ldr r1,=message		/* Direccion de memoria que contiene el mensaje a imprimir*/
	mov r2,#18		/* Tamaño del mensaje a imprimir. */
	svc #0			/* Llamada a una interrupción, donde el 0 puede tener o no significado por el sistema operativo. */
	mov r7,#1		/* Cerrar Flujo de escritura. */
	mov r0,#0		/* r0 <- 0	*/
	svc #0			/* Llamada a una interrupción, donde el 0 puede tener o no significado por el sistema operativo. */


message:
       .ascii "Valor 1 > Valor 2\n"	/* Defininiendo una cadena normal.*/

message1:
      .ascii "Valores Iguales\n"	/* Defininiendo una cadena normal.*/

message2:
      .ascii "Valor 2 > Valor 1\n"	/* Defininiendo una cadena normal.*/
