assume cs:code, ds:datasg
datasg segment
    db 'weclome to masm!' ;定义字符串数据
    db '...............'
datasg ends

code segment
start: 
    mov ax, 2000H
    mov ds, ax
    mov bx, 1000H
    mov si, 0
    mov ax, [bx + si]
    inc si

    mov cx, [bx + si]
    inc si
    mov di, si
    mov ax, [bx + di]

    mov ax, 4c00h
    int 21h

code ends
end start