assume cs:code
code segment
s:  mov ax, bx
    mov si, offset s  ; 转入s的地址（个人感觉这个是偏移地址）
    mov di, offset, s0  ; s0的地址转入di
    mov ax, cs:[si] ; 将ax中的指令
    mov cs:[di], ax



s0: nop
    nop
    


    mov ax, 4c00h
    int 21h

code ends
