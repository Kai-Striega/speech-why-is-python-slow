main:                                   # @main
        push    rax
        mov     rdi, qword ptr [rsi + 8]
        mov     rsi, rsp
        mov     edx, 10
        call    strtoull@PLT
        test    rax, rax
        je      .LBB0_1
        mov     rcx, rax
        dec     rax
        lea     rdx, [rcx - 2]
        mul     rdx
        shld    rdx, rax, 63
        lea     rsi, [rcx + rdx]
        dec     rsi
        jmp     .LBB0_3
.LBB0_1:
        xor     esi, esi
.LBB0_3:
        lea     rdi, [rip + .L.str]
        xor     eax, eax
        call    printf@PLT
        xor     eax, eax
        pop     rcx
        ret
.L.str:
        .asciz  "total=%lu\n"