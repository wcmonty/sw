traverse:
 pushl %ebp
 movl %esp, %ebp
 subl $24, %esp
 cmpl $0, 8(%ebp)
 jne .L2
 movl $0, -20(%ebp)
 jmp .L4
.L2:
movl 8(%ebp), %eax
 movl (%eax), %eax
 movl %eax, -12(%ebp)
 movl 8(%ebp), %eax
 movl 4(%eax), %eax
 movl %eax, (%esp)
 call traverse
 movl %eax, -8(%ebp)
 movl -8(%ebp), %eax
 cmpl -12(%ebp), %eax
 jle .L5
 movl -8(%ebp), %eax
 movl %eax, -12(%ebp)
.L5:
movl 8(%ebp), %eax
 movl 8(%eax), %eax
 movl %eax, (%esp)
 call traverse
 movl %eax, -4(%ebp)
 movl -4(%ebp), %eax
 cmpl -12(%ebp), %eax
 jle .L7
 movl -4(%ebp), %eax
 movl %eax, -12(%ebp)
.L7:
 movl -12(%ebp), %eax
 movl %eax, -20(%ebp)
.L4:
 movl -20(%ebp), %eax
 leave
 ret