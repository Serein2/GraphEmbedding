assume cs:code, ds:data, ss:stack
data segment
    dw 0123h, 0456h, 0789h, 0abch, 0defh, 0cbah, 0987h
data ends

stack segment
    dw 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
stack ends

code segment
start: 
    mov ax, stack ; 将stack的地址绑定ax
    mov ss, ax   ;将sx的地址绑定栈地址
    mov sp, 20h  
    mov ax, data 
    mov ds, ax ;数据段绑定ds， 栈段绑定ss

    mov bx, 0
    mov cx, 8
 s: push [bx]
    add bx, 2
    loop s 

    mov bx, 0
    mov cx, 0
 s0: pop [bx]
    add bx, 2
    loop s0


    mov ax, 4c00h
    int 21h
code ends
end start
