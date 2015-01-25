/* $begin code-yso */
/* $begin code-ysa */
# Execution begins at address 0 
		.pos 0 
init:	irmovl Stack, %esp  	# Set up stack pointer  
		irmovl Stack, %ebp  	# Set up base pointer   
		call Main		# Execute main program
		halt			# Terminate program 

# Array of 4 elements
		.align 4 	
array:	.long 0xd
		.long 0xc0
		.long 0xb00
		.long 0xa000	

Main:	pushl %ebp 
		rrmovl %esp,%ebp
		irmovl $4,%eax	
		pushl %eax		# Push 4
		irmovl array,%edx
		pushl %edx      	# Push array
		call sum_list		# Sum(array, 4)
		rrmovl %ebp,%esp
		popl %ebp
		ret 

/* $begin sum-list 0 */
# int sum_list(list_ptr ls)
sum_list:
		pushl	%ebp
		rrmovl	%esp, %ebp
		mrmovl	8(%ebp), %ecx
		xorl	%eax, %eax
		irmovl	0, %ebx
		addl	%ebx, %ecx
		je	SUM_LIST_RETURN
LOOP:	
		mrmovl	(%ecx), %ebx
		addl	%ebx, %eax
		mrmovl	8(%ecx), %ecx
		irmovl	0, %ebx
		addl	%ebx, %ecx
		jne	LOOP
SUM_LIST_RETURN:
		popl %ebp
		ret
/* $end sum-list 0 */

# The stack starts here and grows to lower addresses
	.pos 0x100		
Stack:	 
/* $end code-ysa */
/* $end code-yso */
