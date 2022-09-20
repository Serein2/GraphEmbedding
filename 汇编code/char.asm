assume cs:code, ds:data
data segment
    db 3 dup(0)
    db 3 dup (0, 1, 2)
    db 3 dup ('abc', 'ABC')

data ends
stacksg segment
    dw 0, 0, 0, 0, 0, 0, 0, 0
stacksg ends

code segment
start: 
    mov ax, data
    mov ds, ax
    mov ax, ds:[0]
    mov dx, ds:[2]
    div word ptr ds:[4]
    mov ds:[6], ax


    mov ax, 4c00h
    int 21h

code ends
end start