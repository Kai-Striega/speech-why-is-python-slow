main:                                   # @main
        push    rax
        lea     rdi, [rip + .L.str]
        movabs  rsi, -8820053115
        xor     eax, eax
        call    printf@PLT
        xor     eax, eax
        pop     rcx
        ret
.L.str:
        .asciz  "total=%lu\n"