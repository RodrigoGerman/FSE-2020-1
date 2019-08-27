
@ Syscall defines
.equ SYSCALL_EXIT,     1	/* Definir una constante simbólica.*/

.globl _start

_start:

        @================================	/* Comentario */
        @ Exit					/* Comentario */
        @================================	/* Comentario */
exit:
	
	@ YOUR CODE HERE			/* Comentario */
	mov r0,#42				/* r0 <- 42	*/
	mov r7,#SYSCALL_EXIT			/* r7 <- (SYSCALL_EXIT)	*/
	swi 0x0
