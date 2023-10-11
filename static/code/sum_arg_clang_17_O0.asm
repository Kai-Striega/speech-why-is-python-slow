main:                                   # @main
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     dword ptr [rbp - 4], 0
        mov     dword ptr [rbp - 8], edi
        mov     qword ptr [rbp - 16], rsi
        mov     qword ptr [rbp - 32], 0
        mov     rax, qword ptr [rbp - 16]
        mov     rdi, qword ptr [rax + 8]
        lea     rsi, [rbp - 24]
        mov     edx, 10
        call    strtoull@PLT
        mov     qword ptr [rbp - 40], rax
        mov     qword ptr [rbp - 48], 0
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
        mov     rax, qword ptr [rbp - 48]
        cmp     rax, qword ptr [rbp - 40]
        jae     .LBB0_4
        mov     rax, qword ptr [rbp - 48]
        add     rax, qword ptr [rbp - 32]
        mov     qword ptr [rbp - 32], rax
        mov     rax, qword ptr [rbp - 48]
        add     rax, 1
        mov     qword ptr [rbp - 48], rax
        jmp     .LBB0_1
.LBB0_4:
        mov     rsi, qword ptr [rbp - 32]
        lea     rdi, [rip + .L.str]
        mov     al, 0
        call    printf@PLT
        mov     eax, dword ptr [rbp - 4]
        add     rsp, 48
        pop     rbp
        ret
.L.str:
        .asciz  "total=%lu\n"