assume cs:code, ds:datasg
datasg segment
    db 'weclome to masm!' ;定义字符串数据
    db '...............'
datasg ends

code segment
start: 
    mov ax, datasg
    mov ds, ax

    mov si, 0
    mov di, 16
    mov cx, 8

 s: mov ax,[si]
    mov [di], ax
    add si, 2
    add di, 2
    loop s

    mov ax, 4c00h
    int 21h

code ends
end