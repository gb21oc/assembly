bits 64

global assembly
assembly:
  mov eax, 3
  call setEax
  ;mov rbx, 5
  cmp eax, 5
  je setEaxText
  call rax
  ret

setEax:
  mov eax, 5
  ret

setEaxText:
  mov rax, "true"
  ret
