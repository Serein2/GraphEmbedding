assume cs:code, ds:datasg
datasg segment
    db 'ibm             '
    db 'dec             '
    db 'dos             '
    db 'vax             '
datasg ends
stacksg segment
    dw 0, 0, 0, 0, 0, 0, 0, 0
stacksg ends

code segment
start: 
    mov ax, datasg
    mov ss, ax  ; 给定一个栈段
    mov sp, 16
    mov ax, datasg
    mov ds, ax
    mov bx, 0
    mov cx, 4


s0: push cx ; 将外层循环的cx压栈
    mov si, 0 ; si用来表示
    mov cx, 3
s:  mov al, [bx + si]
    and al, 11011111b
    mov [bx + si], al
    inc si
    loop s
    add bx, 16
    mov pop, cx  ;使用固定的空间
    loop s0




    mov ax, 4c00h
    int 21h

code ends
end start