.text
.global _start

_start:
	mov	r7,#4		/* Escribir en la llamada al sistema. */
	mov	r0,#1		/* Llamada a STDOUT. */
	ldr	r1,=message	/* Direccion de memoria que contiene el mensaje a imprimir*/
	mov 	r2,#18		/* Tamaño del mensaje a imprimir. */
	svc	#0		/* Llamada a una interrupción, donde el 0 puede tener o no significado por el sistema operativo. */
	mov	r7,#1		/* Cerrar Flujo de escritura. */
	mov	r0,#0		/* r0 <- 0	*/
	svc	#0		/* Llamada a una interrupción, donde el 0 puede tener o no significado por el sistema operativo. */
       .data

message:
       .ascii "FSE2020-1 is cool\n"	/* Defininiendo una cadena normal.*/
