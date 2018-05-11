.data
num1: .word 742334234
num2: .word 326246552
.text
la $t0, num1
la $t1, num2
lw $t0, 0($t0)
lw $t1, 0($t1)
while1:
beq $t0, $t1, while1_fi
if1:
blt $t0, $t1, else1
subu $t0, $t0, $t1
b while1
else1:
subu $t1, $t1, $t0
b while1
while1_fi:
li $v0, 1
move $a0, $t0
syscall