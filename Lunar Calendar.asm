.data
	canchi_arr: .space 48
	tb1: .asciiz "Nhap ngay DAY: "
	tb2: .asciiz "Nhap thang MONTH: "
	tb3: .asciiz "Nhap nam YEAR: "
	tb4: .asciiz "Nhap sai ngay !\n"
	tb5: .asciiz "Nhap sai thang !\n"
	tb6: .asciiz "Nhap sai nam !\n"
	tb7: .asciiz "-------- Ban hay chon 1 trong cac thao tac duoi day --------\n"
	tc1: .asciiz "1. Xuat chuoi TIME theo dinh dang DD/MM/YYYY\n"
	tc2: .asciiz "2. Chuyen doi chuoi TIME thanh mot trong cac dinh dang:\n"
	tc21: .asciiz "\tA. MM/DD/YYYY\n"
	tc22: .asciiz "\tB. Month DD, YYYY\n"
	tc23: .asciiz "\tC. DD Month, YYYY\n"
	tc3: .asciiz "3. Kiem tra trong chuoi TIME co phai la nam nhuan khong ?\n"
	tc4: .asciiz "4. Cho biet ngay vua nhap la thu may trong tuan\n"
	tc5: .asciiz "5. Cho biet ngay vua nhap la ngay thu may ke tu ngay 1/1/1\n"
	tc6: .asciiz "6. Cho biet can chi cua nam vua nhap\n"
	tc7: .asciiz "7. Cho biet khoang thoi gian giua chuoi TIME_1 va TIME_2\n"
	tc8: .asciiz "8. Cho biet 2 nam nhuan gan nhat voi nam trong chuoi time\n"
	tc9: .asciiz "9. Nhap input tu file input.txt xuat ket qua toan bo chuc nang tren ra file output.txt\n"
	tc10: .asciiz "------------------------------------------------------------------------------------\n"
	tbkq: .asciiz "Ket qua: "
	
	day: .word 0
	month: .word 0
	year: .word 0
	str: .space 11
	bufferTest1: .space 3
	bufferTest2: .space 3
	bufferTest3: .space 5
	customize: .word 0
	input: .asciiz "Lua chon: "

	arr_dofw: .word 0,3,2,5,0,3,5,1,4,6,2,4
	dayofmonth: .word 31,28,31,30,31,30,31,31,30,31,30,31

	TEMP_1:.space 50
	TEMP_2:.space 50
	Month_1:.asciiz "January"
	Month_2:.asciiz "February"
	Month_3:.asciiz "March"
	Month_4:.asciiz "April"
	Month_5:.asciiz "May"
	Month_6:.asciiz "June"
	Month_7:.asciiz "July"
	Month_8:.asciiz "August"
	Month_9:.asciiz "September"
	Month_10:.asciiz "October"
	Month_11:.asciiz "November"
	Month_12:.asciiz "December"
	msg_convert_khonghople:.asciiz "Type khong phai A, B, C\n"

	#thu
	ChuNhat: .asciiz "Chu Nhat"
	Thu2: .asciiz "Thu Hai"
	Thu3: .asciiz "Thu Ba"
	Thu4: .asciiz "Thu Tu"
	Thu5: .asciiz "Thu Nam"
	Thu6: .asciiz "Thu Sau"
	Thu7: .asciiz "Thu Bay"

	
	#can
	giap: .asciiz "Giap"
	at: .asciiz "At"
	binh: .asciiz "Binh"
	dinh: .asciiz "Dinh"
	mau: .asciiz "Mau"
	ky: .asciiz "Ky"
	canh: .asciiz "Canh"
	tan: .asciiz "Tan"
	nham: .asciiz "Nham"
	quy: .asciiz "Quy"
	
	#chi
	ty: .asciiz "Ty"
	suu: .asciiz "Suu"
	dan: .asciiz "Dan"
	mao: .asciiz "Mao"
	thin: .asciiz "Thin"
	tyj: .asciiz "Ty."
	ngo: .asciiz "Ngo"
	mui: .asciiz "Mui"
	than: .asciiz "Than"
	dau: .asciiz "Dau"
	tuat: .asciiz "Tuat"
	hoi: .asciiz "Hoi"
	test: .asciiz "01/01/0001"
	_space: .asciiz " "
	_breakline: .asciiz "\r\n"
	isleapyear: .asciiz " La nam nhuan\n"
	nisleapyear: .asciiz " La nam thuong\n"

	file_loc: .asciiz "input.txt"
	readline1: .asciiz "00/00/0000"
	readline2: .asciiz "00/00/0000"
	tempreadline1: .asciiz "00/00/0000"
	bline: .asciiz "\n"
	file_write: .asciiz "output.txt"
	tbfile: .asciiz "Da xong!!"
	buffer: .space 128 

	readErrorMsg: .asciiz "\nLoi doc file input.txt!\n"
	openErrorMsg: .asciiz "\nLoi mo file input.txt!\n"
	temp: .word 40
	openWriteFileErr: .asciiz "\nLoi mo file output.txt!\n"
	writeErrorMsg: .asciiz "\nLoi ghi file output.txt!\n"
	itos: .space 11
	ftb1: .asciiz "1. "
	ftb2: .asciiz "2A. "
	ftb3: .asciiz "2B. "
	ftb4: .asciiz "2C. "
	ftb5: .asciiz "3. "
	ftb6: .asciiz "4. "
	ftb7: .asciiz "5. "
	ftb8: .asciiz "6. "
	ftb9: .asciiz "7. "
	ftb10: .asciiz "8. "
	ftb12: .asciiz " la "
	ftb13: .asciiz " nam "
	ftb14: .asciiz " ngay"
	ftb15: .asciiz "Koang cach tu ngay "
	ftb16: .asciiz " den ngay "
	ftb17: .asciiz "Hai nam nhuan gan nhat voi "
	ftb18: .asciiz " nhat la "
	ftb19: .asciiz " va "
	ftb20: .asciiz " la nam "
	ftb21: .asciiz "Chuoi Time_1 khong hop le"
	ftb22: .asciiz "Chuoi Time_2 khong hop le"
	ftb23: .asciiz "Chuoi Time_1 va Time_2 khong hop le"

.text
Menu.A:
	#Truyen tham so cho ham Nhap
	la $a1, day
	la $a2, month
	la $a3, year
	
	#Goi ham nhap du lieu
	jal InputData

	la $a0, str
	la $a1, day
	la $a2, month
	la $a3, year	
	
	#lw $t0,($a3)
	#slti $t1,$t0,1
	#beq $t1,1,Menu.YearZero

	jal Check

	beq $v0, 1, Menu.Run
	j Menu.A

Menu.Run:
	jal Date
	move $a0,$v0
	jal Menu

	#ket thuc
	li $v0, 10
	syscall


#==== HAM NHAP NGAY - THANG - NAM ====
InputData:
#Dau thu tuc
	addi $sp, $sp, -28

	#Backup
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $a1, 16($sp)
	sw $a2, 20($sp)
	sw $a3, 24($sp)

#Than thu tuc
	#Xuat thong bao 1
	li $v0, 4
	la $a0, tb1
	syscall
	
	#Nhap ngay
	li $v0, 8
	la $a0, bufferTest1
	li $a1, 3
	move $t0, $a0
	syscall

	li $v0, 4
	la $a0, _breakline
	syscall

	move $a0, $t0

	jal Check2

	lw $a1, 16($sp)
	
	sw $v0, ($a1)

	#Xuat thong bao 2
	li $v0, 4
	la $a0, tb2
	syscall
	
	#Nhap thang
	li $v0, 8
	la $a0, bufferTest2
	li $a1, 3
	move $t0, $a0
	syscall

	li $v0, 4
	la $a0, _breakline
	syscall

	move $a0, $t0

	jal Check2

	lw $a2, 20($sp)

	sw $v0, ($a2)
	
	#Xuat thong bao 3
	li $v0, 4
	la $a0, tb3
	syscall
	
	#Nhap nam
	li $v0, 8
	la $a0, bufferTest3
	li $a1, 5
	move $t0, $a0
	syscall

	li $v0, 4
	la $a0, _breakline
	syscall

	move $a0, $t0

	jal Check3	

	lw $a3, 24($sp)
	
	sw $v0, ($a3)


#Cuoi thu tuc
	
	#Restore
	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	#lw $a1, 16($sp)
	#lw $a2, 20($sp)
	#lw $a3, 24($sp)
	
	#Xoa Stack
	addi $sp, $sp, 28

	#Tra ve
	jr $ra

#=====================================

Check2:
	addi $sp, $sp, -4

	sw $ra, ($sp)

	lbu $t1, ($a0)
	lbu $t2, 1($a0)

	move $a0, $t1
	jal Check2.Character1
	beq $v0, 0, Check2.Return
	addi $t1, $t1, -48
	
	move $a0, $t2
	jal Check2.Character1
	beq $v0, 0, Check2.Return
	addi $t2, $t2, -48

	li $t0, 10
	mult $t1, $t0
	mflo $t1
	add $t1, $t1, $t2

	move $v0, $t1

	lw $ra, ($sp)
	
	#Xoa Stack
	addi $sp, $sp, 4

	#Tra ve
	jr $ra

Check2.Return:
	lw $ra, ($sp)

	addi $sp, $sp, 4

	li $v0, 0	
	jr $ra

Check2.Character1:
	addi $sp, $sp, -4
	
	sw $ra, ($sp)

	li $t5, '0'
	slt $t6, $a0, $t5
	beq $t6, 0, Check2.Character2
	
	#li $v0, 4
	#la $a0, tb5
	#syscall

	li $v0, 0	

	lw $ra, ($sp)

	addi $sp, $sp, 4

	jr $ra 
	
Check2.Character2:

	li $t5, '9'
	slt $t6, $t5, $a0
	beq $t6, 0, Check2.CharacterReturn

	#li $v0, 4
	#la $a0, tb5
	#syscall

	li $v0, 0

	lw $ra, ($sp)

	addi $sp, $sp, 4

	jr $ra

Check2.CharacterReturn:
	li $v0, 1
	lw $ra, ($sp)

	addi $sp, $sp, 4

	jr $ra

Check3:
	addi $sp, $sp, -8

	sw $ra, ($sp)
	sw $a0, 4($sp)

	lbu $t1, ($a0)
	lbu $t2, 1($a0)
	lbu $t3, 2($a0)
	lbu $t4, 3($a0)

	move $a0, $t1
	jal CheckCharacter1
	beq $v0, 0, CheckReturn
	addi $t1, $t1, -48
	

	move $a0, $t2
	jal CheckCharacter1
	beq $v0, 0, CheckReturn
	addi $t2, $t2, -48


	move $a0, $t3
	jal CheckCharacter1
	beq $v0, 0, CheckReturn
	addi $t3, $t3, -48


	move $a0, $t4
	jal CheckCharacter1
	beq $v0, 0, CheckReturn
	addi $t4, $t4, -48

	li $t0, 1000
	mult $t1, $t0
	mflo $t1

	li $t0, 100
	mult $t2, $t0
	mflo $t2

	li $t0, 10
	mult $t3, $t0
	mflo $t3

	add $t1, $t1, $t2
	add $t1, $t1, $t3
	add $t1, $t1, $t4

	move $v0, $t1

	lw $ra, ($sp)
	lw $a0, 4($sp)

	addi $sp, $sp, 8

	jr $ra

CheckReturn:
	lw $ra, ($sp)
	lw $a0, 4($sp)

	addi $sp, $sp, 8

	li $v0, 0	
	jr $ra

CheckCharacter1:
	addi $sp, $sp, -4
	
	sw $ra, ($sp)

	li $t5, '0'
	slt $t6, $a0, $t5
	beq $t6, 0, CheckCharacter2
	
	li $v0, 4
	la $a0, tb6
	syscall

	li $v0, 0	

	lw $ra, ($sp)

	addi $sp, $sp, 4

	jr $ra 

CheckCharacter2:
	
	li $t5, '9'
	slt $t6, $t5, $a0
	beq $t6, 0, CheckCharacterReturn

	li $v0, 4
	la $a0, tb6
	syscall

	li $v0, 0

	lw $ra, ($sp)

	addi $sp, $sp, 4

	jr $ra		

CheckCharacterReturn:
	li $v0, 1
	lw $ra, ($sp)

	addi $sp, $sp, 4

	jr $ra

#=====================================

Check:
	
	#Khoi tao Stack
	addi $sp, $sp, -16
	
	#Backup
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	

	#Load du lieu
	lw $s0, ($a1) # Ngay
	lw $s1, ($a2) # Thang
	lw $s2, ($a3) # Nam	

	beq,$s2,0,Check.YearFalse
	j Check.CheckDayMonth
Check.YearFalse:
	li $v0,0
	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra
#Kiem tra dieu kien ung voi cac thang 
#Nhom 1: 1, 3, 5, 7, 8, 10, 12
#Nhom 2: 4, 6, 9, 11
#Nhom 3: 2
Check.CheckDayMonth:
	bne $s1, 1, Check.Label1 #Neu khac thang 1 thi nhay den Check.Label1
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedOne

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label1:
	bne $s1, 3, Check.Label2
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedOne

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label2:
	bne $s1, 5, Check.Label3
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedOne

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label3:
	bne $s1, 7, Check.Label4
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedOne

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label4:
	bne $s1, 8, Check.Label5
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedOne

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label5:
	bne $s1, 10, Check.Label6
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedOne
	
	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label6:
	bne $s1, 12, Check.Label7
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedOne

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label7:
	bne $s1, 4, Check.Label8
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedTwo

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label8:
	bne $s1, 6, Check.Label9
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedTwo

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label9:
	bne $s1, 9, Check.Label10
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedTwo

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label10:
	bne $s1, 11, Check.Label11
	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedTwo

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.Label11:
	bne $s1, 2, Check.LabelTemp

	move $a1, $s0
	move $a2, $s1
	move $a3, $s2
	jal SuccessedThree

	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

Check.LabelTemp:
	li $v0, 4
	la $a0, tb5
	syscall

	li $v0,0
	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addi $sp, $sp, 16
	jr $ra

	#j Menu.A

# Kiem tra tinh hop le ngay nhap vao cua thang 1, 3, 5, 7, 8, 10, 12 
SuccessedOne:

	addi $sp, $sp, -8
	
	#Back up
	sw $ra, ($sp)
	sw $a1, 4($sp)

	#lw $s0, ($a1)

	li $t2, 0
	li $t3, 32	

	slt $t0, $a1, $t3
	slt $t1, $t2, $a1

	bne $t0, $t1, ErrorDate1

	li $v0, 1
	
	#Restore
	lw $ra, ($sp)
	lw $a1, 4($sp)

	#Xoa stack
	addi $sp, $sp, 8

	jr $ra

# Kiem tra tinh hop le ngay nhap vao cua thang 4, 6, 9, 11 
SuccessedTwo:
	
	addi $sp, $sp, -8
	
	#Back up
	sw $ra, ($sp)
	sw $a1, 4($sp)
	
	#lw $s0, ($a1)

	li $t2, 0
	li $t3, 31
	
	slt $t0, $a1, $t3
	slt $t1, $t2, $a1
	
	bne $t0, $t1, ErrorDate1

	li $v0, 1

	#Restore
	lw $ra, ($sp)
	lw $a1, 4($sp)

	#Xoa stack
	addi $sp, $sp, 8

	jr $ra
	
# Kiem tra tinh hop le ngay nhap vao cua thang 2
SuccessedThree:

	addi $sp, $sp, -20
	
	#Back up
	sw $ra, ($sp)
	sw $a1, 4($sp)
	sw $a2, 8($sp)
	sw $a3, 12($sp)
	sw $a0, 16($sp)

	# Kiem tra xem nam co chia het cho 400
	li $t0, 400
	div $a3, $t0
	mfhi $t1
	beq $t1, $0, SuccessedThree.True
	
	# Kiem tra xem nam co chia het cho 100
	li $t0, 100
	div $a3, $t0
	mfhi $t1
	beq $t1, $0, SuccessedThree.False

	# Kiem tra xem nam co chia het cho 4
	li $t0, 4
	div $a3, $t0
	mfhi $t1
	beq $t1, $0, SuccessedThree.True

	j SuccessedThree.False
		
# Neu nam chia het cho 400 thi khoi tao $v0 = 1
SuccessedThree.True:
	li $v0, 1
	
	jal SuccessedThree.Output1	

	j SuccessedThree.Return

# Neu nam chia het cho 100 thi khoi tao $v0 = 0
SuccessedThree.False:
	li $v0, 0

	jal SuccessedThree.Output2

	j SuccessedThree.Return

# Kiem ngay voi nam nhuan
SuccessedThree.Output1: 

	addi $sp, $sp, -4

	sw $ra, ($sp)
	
	li $t0, 0
	li $t1, 30

	slt $t2, $a1, $t1
	slt $t3, $t0, $a1

	bne $t2, $t3, ErrorDate

	#jal Date

	#move $a0, $v0
	#jal Menu

	lw $ra, ($sp)

	addi $sp, $sp, 4

	li $v0, 1

	jr $ra

#Kiem tra ngay voi nam khong nhuan
SuccessedThree.Output2: 

	addi $sp, $sp, -4
	
	sw $ra, ($sp)

	li $t0, 0
	li $t1, 29

	slt $t2, $a1, $t1
	slt $t3, $t0, $a1

	bne $t2, $t3, ErrorDate

	lw $ra, ($sp)

	addi $sp, $sp, 4

	li $v0, 1

	jr $ra

#In ra man hinh nhap sai ngay, sau do nhay den label Successed.Return1
ErrorDate1:
	li $v0, 4
	la $a0, tb4
	syscall
	
	li $v0, 0	

	j Successed.Return1

#Lenh nhay ve thu tuc co jal
Successed.Return1:
	#Restore
	lw $ra, ($sp)
	lw $a1, 4($sp)

	#Xoa stack
	addi $sp, $sp, 8

	jr $ra

#Lenh nhay ve thu tuc co jal
Successed.Return:
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra

#Nhay ve thu tuc co jal
SuccessedThree.Return: 
	#Restore
	lw $ra, ($sp)
	lw $a1, 4($sp)
	lw $a2, 8($sp)
	lw $a3, 12($sp)
	lw $a0, 16($sp)

	addi $sp, $sp, 20

	jr $ra

SuccessedThree.Exit:
	li $v0, 0
	jr $ra

#In ra man hinh nhap sai ngay va nhay den label Successed.Return
ErrorDate:
	li $v0, 4
	la $a0, tb4
	syscall
	
	li $v0, 0	

	j Successed.Return


#==============MENU==========================
Menu: 
	
	addi $sp, $sp, -8
	
	sw $ra, ($sp)
	sw $s1, 4($sp)

	move $s1, $a0

	li $v0, 4
	la $a0, tb7
	syscall

	li $v0, 4
	la $a0, tc1
	syscall

	li $v0, 4
	la $a0, tc2
	syscall

	li $v0, 4
	la $a0, tc21
	syscall

	li $v0, 4
	la $a0, tc22
	syscall

	li $v0, 4
	la $a0, tc23
	syscall

	li $v0, 4
	la $a0, tc3
	syscall

	li $v0, 4
	la $a0, tc4
	syscall

	la $a0, tc5
	syscall

	la $a0, tc6
	syscall

	la $a0, tc7
	syscall

	la $a0, tc8
	syscall

	la $a0, tc9
	syscall

	la $a0, tc10
	syscall
Menu.Choice:
	li $v0, 4
	la $a0, input
	syscall

	li $v0, 5
	syscall

	sw $v0, customize

	lw $s0, customize

	bne $s0, 1, Menu.Label2

	li $v0,4
	la $a0,tbkq
	syscall	
	li $v0, 4
	move $a0, $s1
	syscall

	lw $ra, ($sp)
	lw $s0, 4($sp)

	addi $sp, $sp, 8

	j Exit

Menu.Label2:
	bne $s0, 2, Menu.Label3
	li $v0, 4
	la $a0, tc21
	syscall
	la $a0, tc22
	syscall
	la $a0, tc23
	syscall	

	la $a0,input
	syscall

	li $v0,12
	syscall

	move $t1,$v0 #luu lua chon dinh dang

	li $v0,4
	la $a0,_breakline
	syscall
	li $v0,4
	la $a0,tbkq
	syscall	

	beq $t1,'A',Menu.Label2.Do1
	beq $t1,'B',Menu.Label2.Do2
	beq $t1,'C',Menu.Label2.Do3
	j Menu.Label2.Return
Menu.Label2.Do1:
	move $a0,$s1
	jal Convert_A
	move $a0,$v0
	li $v0,4
	syscall
	j Menu.Label2.Return
Menu.Label2.Do2:
	move $a0,$s1
	jal Convert_B
	move $a0,$v0
	li $v0,4
	syscall
	j Menu.Label2.Return
Menu.Label2.Do3:
	move $a0,$s1
	jal Convert_C
	move $a0,$v0
	li $v0,4
	syscall
	j Menu.Label2.Return
Menu.Label2.Return:
	lw $ra, ($sp)
	lw $s0, 4($sp)

	addi $sp, $sp, 8

	j Exit
Menu.Label3:
	bne $s0, 3, Menu.Label4
	li $v0,4
	la $a0,tbkq
	syscall
	move $a0,$s1
	jal LeapYear
	move $t0,$v0
	beq $t0,1,Menu.Label3.IsLeapYear

	la $a0,	nisleapyear
	li $v0,4
	syscall
	j Menu.Label3.Endif
Menu.Label3.IsLeapYear:
	la $a0,	isleapyear
	li $v0,4
	syscall

Menu.Label3.Endif:
	
	lw $ra, ($sp)
	lw $s0, 4($sp)

	addi $sp, $sp, 8

	j Exit
Menu.Label4:
	bne $s0, 4, Menu.Label5
	li $v0,4
	la $a0,tbkq
	syscall
	move $a0,$s1
	jal Weekday
	move $a0,$v0
	li $v0,4
	syscall		

	lw $ra, ($sp)
	lw $s0, 4($sp)

	addi $sp, $sp, 8

	j Exit
Menu.Label5:
	bne $s0, 5, Menu.Label6
	li $v0,4
	la $a0,tbkq
	syscall
	move $a0,$s1
	la $a1,test
	jal DateDiff
	move $a0,$v0
	li $v0,1
	syscall	

	lw $ra, ($sp)
	lw $s0, 4($sp)

	addi $sp, $sp, 8

	j Exit
Menu.Label6:
	bne $s0, 6, Menu.Label7
	li $v0,4
	la $a0,tbkq
	syscall	
	move $a0,$s1
	jal CanChi
	move $a0,$v0
	li $v0,4
	syscall
	la $a0,_space
	syscall
	move $a0,$v1
	syscall
	lw $ra, ($sp)
	lw $s0, 4($sp)

	addi $sp, $sp, 8

	j Exit
Menu.Label7:
	bne $s0, 7, Menu.Label8

	move $s6, $s1
	
	
Menu.Label7.A:
	la $a0, str
	la $a1, day
	la $a2, month
	la $a3, year

	jal InputData

	la $a1, day
	la $a2, month
	la $a3, year

	jal Check

	beq $v0, 1, Menu.Label7.Check
	j Menu.Label7.A

Menu.Label7.Check:

	jal Date

	move $s1, $v0

	li $v0,4
	la $a0,tbkq
	syscall
	move $a0, $s6
	move $a1, $s1

	jal DateDiff

	move $s0, $v0	

	li $v0, 1
	move $a0, $s0
	syscall

	lw $ra, ($sp)
	lw $s0, 4($sp)

	addi $sp, $sp, 8

	j Exit
Menu.Label8:
	bne $s0, 8, Menu.Label9
	li $v0,4
	la $a0,tbkq
	syscall		
	move $a0,$s1
	jal ClosestLeapYear
	move $a0,$v0
	li $v0,1
	syscall
	li $v0,4
	la $a0,_space
	syscall
	li $v0,1
	move $a0,$v1
	syscall

	lw $ra, ($sp)
	lw $s0, 4($sp)

	addi $sp, $sp, 8

	j Exit
Menu.Label9:
	bne $s0, 9, Menu.Choice
	li $v0,4
	la $a0,tbkq
	syscall	

	jal ReadFile
	bltz $v0,Exit


	move $a0,$v0
	la $a2,readline1
	jal GetLine
	move $s1,$v0

	jal  OpenFileToWrite
	move $s3,$v0 	#file descriptor
	bltz $s3,Exit

	move $a0,$s1

	jal CheckFileData
	li $s7,0
	
	beq $v0,0,Menu.Label9.FailInput1
	
Menu.Label9.CheckInpu2:
	move $a0,$v1
	la $a2,readline2
	jal GetLine
	move $s2,$v0
	move $a0,$s2
	jal CheckFileData
	beq $v0,0,Menu.Label9.FailInput2	#sai input2

	beq $s7,1,Menu.Label9.WriteFail1	#chi sai input1


	#jal  OpenFileToWrite
	#move $s3,$v0 	#file descriptor
	#bltz $s3,Exit

	#convert Time1
	move $a0,$s1
	jal Day
	move $t1,$v0
	
	move $a0,$s1
	jal Month
	move $t2,$v0

	move $a0,$s1
	jal Year
	move $t3,$v0
	
	la $a0,readline1
	move $a1,$t1
	move $a2,$t2
	move $a3,$t3

	jal Date
	move $s1,$v0

	#convert Time2
	move $a0,$s2
	jal Day
	move $t1,$v0
	
	move $a0,$s2
	jal Month
	move $t2,$v0

	move $a0,$s2
	jal Year
	move $t3,$v0
	
	la $a0,readline2
	move $a1,$t1
	move $a2,$t2
	move $a3,$t3

	jal Date
	move $s2,$v0

	#chep $s1 vao $s4
	move $a1,$s1
	la $a0,tempreadline1
	jal strcpy
	move $s4,$a0	

	#ghi file
	la $a1,ftb1 	#"1. "
	move $a0,$s3
	jal WriteFile

	move $a0,$s3	
	move $a1,$s1
	jal WriteFile

	move $a0,$s3
	la $a1,_breakline
	jal WriteFile	

	#format
	move $a0,$s3
	la $a1,ftb2	#"2.A "
	jal WriteFile

	move $a0,$s4
	jal Convert_A
	move $a1,$v0
	move $a0,$s3
	jal WriteFile
	
	move $a0,$s3
	la $a1,_breakline
	jal WriteFile

	move $a0,$s3
	la $a1,ftb3	#"2.B "
	jal WriteFile	

	move $a1,$s1
	la $a0,tempreadline1
	jal strcpy
	move $s4,$a0 #chep $s1 vao $s4
	move $a0,$s4
	jal Convert_B
	move $a1,$v0
	move $a0,$s3
	jal WriteFile

	move $a0,$s3
	la $a1,_breakline
	jal WriteFile

	move $a0,$s3
	la $a1,ftb4
	jal WriteFile	#"2.C "

	move $a1,$s1
	la $a0,tempreadline1
	jal strcpy
	move $s4,$a0 	#chep $s1 vao $s4
	move $a0,$s4
	jal Convert_C
	move $a1,$v0
	move $a0,$s3
	jal WriteFile

	move $a0,$s3
	la $a1,_breakline
	jal WriteFile

	la $a1,ftb5	#"3. "
	move $a0,$s3
	jal WriteFile	

	move $a0,$s1
	jal Year
	move $a0,$v0
	jal NumberToString
	move $a1,$v0
	move $a0,$s3
	jal WriteFile

	move $a0,$s1
	jal LeapYear
	move $t0,$v0
	beq $t0,1,Menu.Label9.IsLeapYear

	move $a0,$s3
	la $a1,	nisleapyear
	jal WriteFile
	j Menu.Label9.Endif

Menu.Label9.IsLeapYear:
	move $a0,$s3
	la $a1,	isleapyear
	jal WriteFile
Menu.Label9.Endif:
	move $a0,$s3
	la $a1,_breakline
	jal WriteFile

	la $a1,ftb6	#"4. "
	move $a0,$s3
	jal WriteFile
	
	move $a0,$s3
	move $a1,$s1
	jal WriteFile	#"Time1"
	
	move $a0,$s3
	la $a1,ftb12
	jal WriteFile	#" la "

	move $a0,$s1
	jal Weekday
	move $a1,$v0
	move $a0,$s3
	jal WriteFile

	move $a0,$s3
	la $a1,_breakline
	jal WriteFile

	move $a0,$s3
	la $a1,ftb7	#"5. "
	jal WriteFile

	move $a0,$s3
	la $a1,ftb15	#"Khoang cach tu ngay"
	jal WriteFile

	move $a0,$s3
	la $a1,test	#"01/01/0001"
	jal WriteFile

	move $a0,$s3
	la $a1,ftb16	#"den ngay"
	jal WriteFile

	move $a0,$s3
	move $a1,$s1	#"Time1"
	jal WriteFile

	move $a0,$s3
	la $a1,ftb12	#"la"
	jal WriteFile

	move $a0,$s1
	la $a1,test
	jal DateDiff
	move $a0,$v0
	jal NumberToString 
	move $a1,$v0
	move $a0,$s3
	jal WriteFile	#kq

	move $a0,$s3
	la $a1,ftb14
	jal WriteFile	#"ngay"
	
	move $a0,$s3
	la $a1,_breakline
	jal WriteFile

	#can chi
	la $a1,ftb8
	move $a0,$s3
	jal WriteFile	#"6. "

	move $a0,$s1
	jal Year
	move $a0,$v0
	jal NumberToString
	move $a1,$v0
	move $a0,$s3
	jal WriteFile	#"Year"
	
	la $a1,ftb20	#"la nam"
	move $a0,$s3
	jal WriteFile

	move $a0,$s1
	jal CanChi
	move $a0,$s3
	move $a1,$v0
	jal WriteFile	#can

	move $a0,$s3
	la $a1,_space
	jal WriteFile

	move $a0,$s3
	move $a1,$v1
	jal WriteFile	#chi

	move $a0,$s3
	la $a1,_breakline
	jal WriteFile
	
	move $a0,$s3
	la $a1,ftb9
	jal WriteFile	#"7. "

	move $a0,$s3
	la $a1,ftb15	#"Khoang cach tu ngay"
	jal WriteFile

	move $a0,$s3
	move $a1,$s1	#"TIME1"
	jal WriteFile

	move $a0,$s3
	la $a1,ftb16	#"den ngay"
	jal WriteFile

	move $a0,$s3
	move $a1,$s2	#"Time1"
	jal WriteFile

	move $a0,$s3
	la $a1,ftb12	#"la"
	jal WriteFile

	move $a0,$s1
	move $a1,$s2
	jal  DateDiff	#kq
	move $a0,$v0

	jal NumberToString
	move $a1,$v0
	move $a0,$s3
	jal WriteFile

	move $a0,$s3
	la $a1,ftb14
	jal WriteFile	#"ngay"

	move $a0,$s3
	la $a1,_breakline
	jal WriteFile
	
	#closestleapyear
	move $a0,$s3
	la $a1,ftb10
	jal WriteFile	#"8. "

	move $a0,$s3
	la $a1,ftb17	#"Hai nam nhuan gan nhat voi"
	jal WriteFile

	move $a0,$s1
	jal Year
	move $a0,$v0
	jal NumberToString
	move $a1,$v0
	move $a0,$s3
	jal WriteFile	#"Year"	

	move $a0,$s3
	la $a1,ftb18
	jal WriteFile	#"nhat la"

	move $a0,$s1
	jal ClosestLeapYear
	move $a0,$v0
	move $s4,$v1

	jal NumberToString
	move $a1,$v0
	move $a0,$s3
	jal WriteFile	#Year1

	move $a0,$s3
	la $a1,ftb19	#" va "
	jal WriteFile
	move $a0,$s4

	jal NumberToString
	move $a1,$v0
	move $a0,$s3
	jal WriteFile	#Year2

	j Menu.Label9.Done
Menu.Label9.FailInput1:
	li $s7,1
	j Menu.Label9.CheckInpu2
Menu.Label9.FailInput2:
	beq $s7,0,Menu.Label9.WriteFail2	#chi sai input2
	#sai ca input 1 va 2
	j Menu.Label9.WriteFail1and2
Menu.Label9.WriteFail1:
	move $a0,$s3
	la $a1,ftb21
	jal WriteFile
	j Menu.Label9.Done
Menu.Label9.WriteFail2:
	move $a0,$s3
	la $a1,ftb22
	jal WriteFile
	j Menu.Label9.Done
Menu.Label9.WriteFail1and2:
	move $a0,$s3
	la $a1,ftb23
	jal WriteFile
	j Menu.Label9.Done
Menu.Label9.Done:
	move $a0,$s3
	jal CloseWriteFile
	li $v0,4
	la $a0,tbfile	#"Da xong"
	syscall

	lw $ra, ($sp)
	lw $s0, 4($sp)

	addi $sp, $sp, 8

	j Exit
#==============END MENU==========================


#HAM CHUYEN VE CHUOI DD/MM/YYYY
#THAM SO: 	$a1:Ngay
#		$a2:Thang
#		$a3:Nam
#TRA VE: 	$v0:Chuoi dd/mm/yy
Date:
	
	addi $sp, $sp, -24

	sw $ra, ($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	sw $s4, 16($sp)
	sw $t1,20($sp)
	
	move $s1, $a1 	#day
	move $s2, $a2 	#month
	move $s3, $a3	#year
	move $s4, $a0	#str

	li $t0, 10
	div $s1, $t0
	mfhi $t1
	mflo $s1
	addi $t1, $t1, 48
	sb $t1, 1($s4)
	
	div $s1, $t0
	mfhi $t1
	addi $t1, $t1, 48
	sb $t1, ($s4)

	li $t1, '/'
	sb $t1, 2($s4)

	div $s2, $t0
	mfhi $t1
	mflo $s2
	addi $t1, $t1, 48
	sb $t1, 4($s4)

	div $s2, $t0
	mfhi $t1
	addi $t1, $t1, 48
	sb $t1, 3($s4)

	li $t1, '/'
	sb $t1, 5($s4)
	
	div $s3, $t0
	mfhi $t1
	mflo $s3
	addi $t1, $t1, 48
	sb $t1, 9($s4)

	div $s3, $t0
	mfhi $t1
	mflo $s3
	addi $t1, $t1, 48
	sb $t1, 8($s4)

	div $s3, $t0
	mfhi $t1
	mflo $s3
	addi $t1, $t1, 48
	sb $t1, 7($s4)

	div $s3, $t0
	mfhi $t1
	mflo $s3
	addi $t1, $t1, 48
	sb $t1, 6($s4)

	li $t1, '\0'
	#move $t1,$zero

	sb $t1, 10($s4)

	move $v0, $s4
	
	#move $s0, $a0

	lw $ra, ($sp)
	lw $s1, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	lw $s4, 16($sp)
	lw $t1,20($sp)

	addi $sp, $sp, 24

	jr $ra
#KET THUC| HAM CHUYEN VE CHUOI DD/MM/YYYY



#HAM LAY NGAY TU CHUOI
#THAM SO:	$a0:Chuoi
#TRA VE:	$v0:So (Ngay)
Day:
	addi $sp,$sp,-20
	sw $ra,($sp)
	sw $s0, 4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	sw $t3,16($sp)

	move $s0,$a0

	#lay 2 ky tu dau
	lbu $t1,($s0)
	lbu $t2,1($s0)
	
	#chuyen ve so nguyen
	addi $t1,$t1,-48
	addi $t2,$t2,-48
	
	li $t3,10
	mult $t1,$t3
	mflo $t1
	add $t1,$t1,$t2

	#luu gia tri tra ve
	move $v0,$t1
	
	#restore
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	lw $t3,16($sp)
	addi $sp,$sp,20
	jr $ra
#KET THUC| HAM LAY NGAY TU CHUOI

#HAM LAY THANG TU CHUOI
#THAM SO:	$a0:Chuoi
#TRA VE:	$v0:So (Thang)
Month:
	addi $sp,$sp,-20
	sw $ra,($sp)
	sw $s0, 4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	sw $t3,16($sp)
	move $s0,$a0

	#lay 2 ky tu thu 3,4
	lbu $t1,3($s0)
	lbu $t2,4($s0)
	
	#chuyen ve so nguyen
	addi $t1,$t1,-48
	addi $t2,$t2,-48
	
	li $t3,10
	mult $t1,$t3
	mflo $t1
	add $t1,$t1,$t2

	#luu gia tri tra ve
	move $v0,$t1
	
	#restore
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	lw $t3,16($sp)
	addi $sp,$sp,20
	jr $ra
#KET THUC| HAM LAY THANG TU CHUOI

#HAM LAY NAM TU CHUOI
#THAM SO:	$a0:Chuoi
#TRA VE:	$v0:So (Nam)
Year:
	addi $sp,$sp,-36
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	sw $t3,16($sp)
	sw $t4,20($sp)
	sw $t5,24($sp)
	sw $t6,28($sp)
	sw $t7,32($sp)
	move $s0,$a0

	#lay 4 ky thu 6,7,8,9
	lbu $t1,6($s0)
	lbu $t2,7($s0)
	lbu $t3,8($s0)
	lbu $t4,9($s0)
	
	#chuyen ve so nguyen
	addi $t1,$t1,-48
	addi $t2,$t2,-48
	addi $t3,$t3,-48
	addi $t4,$t4,-48
	
	li $t5,1000
	li $t6,100
	li $t7,10
	mult $t1,$t5
	mflo $t1
	add $t1,$t1,$t4

	mult $t2,$t6
	mflo $t2
	add $t1,$t1,$t2
	
	mult $t3,$t7
	mflo $t3
	add $t1,$t1,$t3

	#luu gia tri tra ve
	move $v0,$t1
	
	#restore
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	lw $t3,16($sp)
	lw $t4,20($sp)
	lw $t5,24($sp)
	lw $t6,28($sp)
	lw $t7,32($sp)
	addi $sp,$sp,36
	jr $ra
#KET THUC| HAM LAY NAM TU CHUOI


#HAM KIEM TRA NAM NHUAN
#THAM SO: 	$a0: Chuoi
#TRA VE:	$v0: 1 (La nam nhuan)
#		$v0: 0 (Ko phai nam nhuan)
LeapYear:
	addi $sp,$sp,-16
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	
	move $s0,$a0#date
	jal Year
	move $s0,$v0#year

	li $t1,400
	div $s0,$t1
	mfhi $t2
	beq $t2,0,LeapYear.True	#true if mod 400==0
	li $t1,100
	div $s0,$t1
	mfhi $t2
	beq $t2,0,LeapYear.False #false if mode 100==0
	li $t1,4
	div $s0,$t1
	mfhi $t2
	beq $t2,0,LeapYear.True	#true if mode 4==0
	j LeapYear.False	#else false
LeapYear.True:
	li $v0,1
	j LeapYear.Return

LeapYear.False:
	li $v0,0
	j LeapYear.Return
LeapYear.Return:
	
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	addi $sp,$sp,16
	jr $ra
#KET THUC| HAM KIEM TRA NAM NHUAN


#HAM DEM SO NGAY KE TU 00/00/0000(gia su co ton tai) (DUNG CHO HAM TINH KHOANG CACH GIUA 2 NGAY)
#THAM SO:	$a0: Chuoi
#TRA VE:	$v0: So (So ngay ke tu 00/00/0000)
CountDay:
	addi $sp,$sp,-40
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	sw $s4,20($sp)
	sw $t0,24($sp)
	sw $t1,28($sp)
	sw $t2,32($sp)
	sw $t3,36($sp)
	
	la $s4,dayofmonth
	move $s0,$a0 #chuoi date
	jal Day
	move $s1,$v0 #day
	jal Month
	move $s2,$v0 #month
	jal Year
	move $s3,$v0 #year

	move $t3,$s3
	slti $t1,$s2,3

	beq $t1,1,CountDay.DEYEAR #neu thang < 3 => so nam nhuan = (Y-1)/4 - (Y-1)/100 + (Y-1)/400
	j CountDay.Continue 	#so nam nhuan = (Y)/4 - (Y)/100 + (Y)/400
	
CountDay.DEYEAR:

	subi $t3,$t3,1 	#Y=Y-1 ne
	j CountDay.Continue

CountDay.Continue:
	li $t2,0 	#tinh so nam nhuan
	li $t1,4
	div $t3,$t1
	mflo $t1
	add $t2,$t2,$t1
	li $t1,100
	div $t3,$t1
	mflo $t1
	sub $t2,$t2,$t1
	li $t1,400
	div $t3,$t1
	mflo $t1
	add $t2,$t2,$t1	#t2:so nam nhuan


	li $t0,0 	#$t1:kq

	li $t1,365
	mul $t1,$t1,$s3
	add $t0,$t0,$t1	#kq= kq + Y*365
	
	li $t3,1  	#mang dayofmonth (from 1)
CountDay.CongThang:
	#Cong cac thang
	beq $t3,$s2,CountDay.ThoatCong
	
	lw $t1,($s4)
	add $t0,$t0,$t1	#kq= kq + (so ngay cua thang Mx (x< M))
	
	addi $t3,$t3,1
	addi $s4,$s4,4
	j CountDay.CongThang

CountDay.ThoatCong:
	add $t0,$t0,$s1 #cong ngay (kq= kq + D)

	add $t0,$t0,$t2 #cong so nam nhuan

	move $v0,$t0	#return kq
	#restore
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	lw $s4,20($sp)
	lw $t0,24($sp)
	lw $t1,28($sp)
	lw $t2,32($sp)
	lw $t3,36($sp)
	addi $sp,$sp,40
	jr $ra
#KET THUC| HAM DEM SO NGAY KE TU 00/00/0000



#HAM TINH KHOANG CACH GIUA 2 NGAY
#THAM SO: 	$a0:Chuoi TIME1
#		$a1:Chuoi TIME2
#TRA VE: 	$v0:So (Khoang cach giua TIME1 & TIME2 >0)
DateDiff:
	addi $sp,$sp,-20
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $t1,12($sp)
	sw $t2,16($sp)	


	move $s0,$a0
	move $s1,$a1

	move $a0,$s0
	jal CountDay	#khoang cach tu TIME1-> 00/00/0000
	move $t1,$v0
	move $a0,$s1
	jal CountDay	#khoang cach tu TIME2-> 00/00/0000
	move $t2,$v0

	sub $t2,$t2,$t1
	slt $t1,$t2,$zero
	beq $t1,1,DateDiff.SoAM
	move $v0,$t2
	j DateDiff.Return
DateDiff.SoAM:		#if(kq<0) return 0-kq (>0)
	sub $t2,$zero,$t2
	move $v0,$t2	
DateDiff.Return:
	#restore
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $t1,12($sp)
	lw $t2,16($sp)
	addi $sp,$sp,20

	jr $ra
#KET THUC| HAM TINH KHOANG CACH GIUA 2 NGAY


#HAM TINH THU TRONG TUAN
#THAM SO: 	$a0: Chuoi
#TRA VE:	$v0: Chuoi (Thu trong tuan)
Weekday:
	addi $sp,$sp,-36
	sw $ra,($sp)
	sw $t0,4($sp)
	sw $s0,8($sp) 
	sw $s1,12($sp) 
	sw $s2,16($sp) 
	sw $s3,20($sp) 
	sw $t1,24($sp)
	sw $t2,28($sp)
	sw $t3,32($sp)

	move $s0,$a0	#chuoi
	jal Day
	move $s1,$v0	#ngay
	#li $s1,1
	jal Month
	move $s2,$v0	#thang
	#li $s2,1
	jal Year
	move $s3,$v0	#nam
	#li $s3,1


	la $t0,arr_dofw

	#duoi day la thuat toan (tham khao geekforgeeks)
	slti $t1,$s2,3
	beq $t1,1,Weekday.DEYEAR
	j Weekday.Continue

Weekday.DEYEAR:

	subi $s3,$s3,1
	j Weekday.Continue

Weekday.Continue:

	li $t3,4
	div $s3,$t3
	mflo $t2
	add $t1,$t2,$s3

	li $t3,100
	div $s3,$t3
	mflo $t2
	sub $t1,$t1,$t2

	li $t3,400
	div $s3,$t3
	mflo $t2
	add $t1,$t1,$t2
	
	subi $t2,$s2,1
	li $t3,4
	mul $t2,$t2,$t3
	add $t0,$t0,$t2
	lw $t3,($t0)
	add $t1,$t1,$t3

	add $t1,$t1,$s1

	li $t3,7
	div $t1,$t3
	mfhi $t1

	#kiem tra thu
	beq $t1,0,Weekday.IsCN
	beq $t1,1,Weekday.IsThu2
	beq $t1,2,Weekday.IsThu3
	beq $t1,3,Weekday.IsThu4
	beq $t1,4,Weekday.IsThu5
	beq $t1,5,Weekday.IsThu6
	beq $t1,6,Weekday.IsThu7
	j Weekday.return

	#return $v0
Weekday.IsCN:
	la $v0,ChuNhat
	j Weekday.return
Weekday.IsThu2:
	la $v0,Thu2
	j Weekday.return
Weekday.IsThu3:
	la $v0,Thu3
	j Weekday.return	
Weekday.IsThu4:
	la $v0,Thu4
	j Weekday.return
Weekday.IsThu5:
	la $v0,Thu5
	j Weekday.return
Weekday.IsThu6:
	la $v0,Thu6
	j Weekday.return
Weekday.IsThu7:
	la $v0,Thu7
	j Weekday.return
Weekday.return:


	#restore
	lw $ra,($sp)
	lw $t0,4($sp)
	lw $s0,8($sp)
	lw $s1,12($sp)
	lw $s2,16($sp)
	lw $s3,20($sp)
	lw $t1,24($sp)
	lw $t2,28($sp)
	lw $t3,32($sp)
	addi $sp,$sp,36

	jr $ra
#KET THUC| HAM TINH THU TRONG TUAN

#HAM TINH CAN CHI CUA NAM
#THAM SO:	$a0:Chuoi
#TRA VE:	$v0:Chuoi (Can)
#		$v1:Chuoi (Chi)
CanChi:
	addi $sp,$sp,-24
	sw $ra,($sp)
	sw $s0,4($sp) #date
	sw $t1,8($sp) #canchi_arr
	sw $t2,12($sp)
	sw $t3,16($sp)
	sw $t4,20($sp)	

	move $s0,$a0 #date
	jal Year
	move $s0,$v0 #year
	#li $s0,1601
	la $t1,canchi_arr

	#luu can vao mang (dia chi chuoi)
	la $t3,giap
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,at
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,binh
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,dinh
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,mau
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,ky
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,canh
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,tan
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,nham
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,quy
	sw $t3,($t1)
	subi $t1,$t1,36
	
	#tinh can
	move $t3,$s0
	addi $t3,$t3,6
	li $t4,10
	div $t3,$t4
	mfhi $t3
	
	li $t4,4
	mul $t3,$t3,$t4
	add $t1,$t1,$t3
	
	#luu dia chi cua can
	lw $v0,($t1)

	sub $t1,$t1,$t3
	#luu chi vao mang (dia chi chuoi)
	la $t3,ty
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,suu
	sw $t3,($t1)	
	addi $t1,$t1,4
	la $t3,dan
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,mao
	sw $t3,($t1)	
	addi $t1,$t1,4
	la $t3,thin
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,tyj
	sw $t3,($t1)	
	addi $t1,$t1,4
	la $t3,ngo
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,mui
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,than
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,dau
	sw $t3,($t1)	
	addi $t1,$t1,4
	la $t3,tuat
	sw $t3,($t1)
	addi $t1,$t1,4
	la $t3,hoi
	sw $t3,($t1)
	subi $t1,$t1,44		

	#tinh chi
	move $t3,$s0
	addi $t3,$t3,8
	li $t4,12
	div $t3,$t4
	mfhi $t3

	li $t4,4
	mul $t3,$t3,$t4
	add $t1,$t1,$t3

	#luu dia chi cua chi
	lw $v1,($t1)

	#restore
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	lw $t3,16($sp)
	lw $t4,20($sp)
	addi $sp,$sp,24
	
	jr $ra
#KET THUC| HAM TINH CAN CHI CUA NAM


#HAM TIM 2 NAM NHUAN GAN NHAT
#THAM SO:	$a0:Chuoi
#TRA VE:	$v0:So (Nam thu 1)
#		$v1:So (Nam thu 2)
ClosestLeapYear:
	addi $sp,$sp,-36
	sw $ra,($sp)
	sw $s0, 4($sp)
	sw $t0,8($sp)
	sw $t1,12($sp)
	sw $t2,16($sp)
	sw $t3,20($sp)
	sw $t4,24($sp)
	sw $s1,28($sp)	#kq
	sw $s2,32($sp)	#kq
	move $s0,$a0
	
	jal Year
	move $s0,$v0 	#year

	li $t0,0 	#count

	move $t1,$s0 	#nam can duoi
	move $t2,$s0	#nam can tren

	#do` dong thoi 2 phia
ClosestLeapYear.Loop:
	beq $t0,2,ClosestLeapYear.Return
	subi $t1,$t1,1
	addi $t2,$t2,1

	slti $t3,$t1,1 	#nam nho hon 0 hoac =0
	beq $t3,1,ClosestLeapYear.LabelNoName

	move $a0,$t1
	jal SubLeapYear
	move $t3,$v0
	move $t4,$t1
	beq $t3,1,ClosestLeapYear.isLeapYear
ClosestLeapYear.LabelNoName:
	move $a0,$t2
	jal SubLeapYear
	move $t3,$v0
	move $t4,$t2
	beq $t3,1,ClosestLeapYear.isLeapYear

	j ClosestLeapYear.Loop

	#phan duoi nay de luu ket qua thoi| ko co thuat toan
ClosestLeapYear.isLeapYear:
	addi $t0,$t0,1

	beq $t0,1,ClosestLeapYear.SaveFirst
	move $s1,$t4
	slt $t3,$t4,$s0 #nam tim dc nho hon
	beq $t3,1,ClosestLeapYear.LabelNoName
	j ClosestLeapYear.Loop

	#neu la gia tri dau tien thi luu vo $s2
ClosestLeapYear.SaveFirst:
	move $s2,$t4
	slt $t3,$t4,$s0
	beq $t3,1,ClosestLeapYear.LabelNoName
	j ClosestLeapYear.Loop

ClosestLeapYear.Return:
	
	move $v0,$s1
	move $v1,$s2

	lw $ra,($sp)
	lw $s0,4($sp)
	lw $t0,8($sp)
	lw $t1,12($sp)
	lw $t2,16($sp)
	lw $t3,20($sp)
	lw $t4,24($sp)
	lw $s1,28($sp)
	lw $s2,32($sp)
	addi $sp,$sp,36
	jr $ra
#KET THUC| HAM TIM 2 NAM NHUAN GAN NHAT


#HAM KIEM TRA NAM NHUAN (CHI DUNG CHO 'HAM TIM 2 NAM NHUAN GAN NHAT')
#THAM SO:	$a0:So (Nam)
#TRA VE:	$v0:1 (True)
#		$v0:0 (False)
SubLeapYear:
	addi $sp,$sp,-16
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	
	move $s0,$a0

	li $t1,400
	div $s0,$t1
	mfhi $t2
	beq $t2,0,SubLeapYear.True
	li $t1,100
	div $s0,$t1
	mfhi $t2
	beq $t2,0,SubLeapYear.False
	li $t1,4
	div $s0,$t1
	mfhi $t2
	beq $t2,0,SubLeapYear.True
	j SubLeapYear.False
SubLeapYear.True:
	li $v0,1
	j SubLeapYear.Return

SubLeapYear.False:
	li $v0,0
	j SubLeapYear.Return
SubLeapYear.Return:
	
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	addi $sp,$sp,16
	jr $ra
#KET THUC| HAM KIEM TRA NAM NHUAN (CHI DUNG CHO 'HAM TIM 2 NAM NHUAN GAN NHAT')

#HAM DOC NOI DUNG TRONG FILE .TXT
#THAM SO:
#TRA VE:	$v0:Chuoi (Noi dung file)
ReadFile:
	addi $sp,$sp,-12
	sw $ra, ($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	#Open file
	li $v0, 13
	la $a0, file_loc	#ten file
	li $a1, 0             	#set to read mode
	li $a2, 0               #mode is ignored
	syscall
	bltz $v0, ReadFile.openError
	move $s0, $v0           #file descriptor

	#Read input from file
	li $v0, 14 
	move $a0, $s0
	la $a1, buffer
	li $a2, 40
	syscall
           
	bltz $v0, ReadFile.readError
 
	la $s1,buffer	
	#Close the file 
	li   $v0, 16
	move $a0, $s0
	syscall

	move $v0, $s1
ReadFile.Return:
	lw $ra, ($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	addi $sp,$sp,12

	jr $ra

ReadFile.openError:
	la $a0, openErrorMsg
	li $v0, 4
	syscall
	j ReadFile.Return

ReadFile.readError:

	la $a0, readErrorMsg
	li $v0, 4
	syscall
	j ReadFile.Return
#KET THUC| HAM DOC NOI DUNG TRONG FILE .TXT

#HAM LAY 1 DONG TU CHUOI (NOI DUNG TRONG FILE TXT)
#THAM SO:	$a0:Chuoi (noi dung file)
#		$a2:dia chi se luu chuoi tra ve
#TRA VE:	$v0:Chuoi (1 dong tu $a0)
#		$v0: Vi tri dong tiep theo (Dung de lay dong thu 2 khi goi lai ham nay)
GetLine:
	addi $sp,$sp,-12
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	
	#addi $s1,$s1,-48
	move $s1,$a2
	move $s0,$a0
	li $t0,1
	#doc tung ky tu| du 11 ky tu thi thoi
GetLine.Loop:
	beq $t0,12,GetLine.Return
	lb $t1,($s0)
	sb $t1,($s1)
	addi $t0,$t0,1
	addi $s0,$s0,1
	addi $s1,$s1,1
	j GetLine.Loop
GetLine.Return:
	li $t1,'\0'
	#move $t1,$zero
	addi $s1,$s1,-1
	addi $s0,$s0,1
	sb $t1,($s1)
	addi $s1,$s1,-10

	#tra ve ne
	move $v0,$s1
	move $v1,$s0

	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	addi $sp,$sp,12
	jr $ra
#KET THUC| HAM LAY 1 DONG TU CHUOI (NOI DUNG TRONG FILE TXT)

#HAM TAO LAO BI DAO
CheckFileData:
	addi $sp,$sp,-20
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)


	move $s0,$a0	#Time1
	jal Check2
	move $s1,$v0
	#j Exit
	beq $s1,0,CheckFileData.Return

	#addi $s1,$s1,3 	#check thang
	la $a0,3($s0)
	jal Check2
	move $s2,$v0
	beq $s2,0,CheckFileData.Return
	#addi $s1,$s1,3	#check nam
	la $a0,6($s0)
	jal Check3
	move $s3,$v0
	beq $s3,0,CheckFileData.Return

	la $a1,day
	la $a2,month
	la $a3,year
	sw $s1,($a1)
	sw $s2,($a2)
	sw $s3,($a3)
	jal Check	#check ngay thang nam
	beq $v0,0,CheckFileData.Return
	li $v0,1
	j CheckFileData.Return
CheckFileData.Return:
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	addi $sp,$sp,20
	jr $ra
#KET THUC|HAM TAO LAO BI DAO
	




#HAM MO FILE .TXT (DE GHI)
#THAM SO:	
#TRA VE:	$v0>0: File desciptor(DUNG DE GHI FILE)
OpenFileToWrite:
	addi $sp,$sp,-12
	sw $ra, ($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	#Open file
	li $v0, 13
	la $a0, file_write
	li $a1, 1
	li $a2, 0
	syscall
	bltz $v0, OpenFileToWrite.openError
	#return $v0
OpenFileToWrite.Return:
	lw $ra, ($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	addi $sp,$sp,12

	jr $ra
OpenFileToWrite.openError:
	la $a0, openWriteFileErr
	li $v0, 4
	syscall
	j OpenFileToWrite.Return
#KET THUC| HAM MO FILE .TXT (DE GHI)

#HAM GHI FILE
#THAM SO:	$a0: File desciptor
#		$a1: Chuoi can ghi
#TRA VE:	
WriteFile:
	addi $sp,$sp,-12
	sw $ra, ($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)

	move $s0,$a0 #descriptor
	move $s1,$a1 #chuoi can ghi

	move $a0,$s1
	jal StrLength
	move $a2,$v0	#do dai chuoi can ghi

	#write file
	li $v0, 15 
	move $a0, $s0
	move $a1, $s1
	#li $a2, 50
	syscall
           
	bltz $v0, WriteFile.writeError
WriteFile.Return:
	lw $ra, ($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	addi $sp,$sp,12

	jr $ra
WriteFile.writeError:

	la $a0, writeErrorMsg
	li $v0, 4
	syscall
	j WriteFile.Return
#KET THUC| HAM GHI FILE

#HAM DONG FILE GHI
#THAM SO:	$a0: file descriptor
#TRA VE:
CloseWriteFile:
	addi $sp,$sp,-8
	sw $ra, ($sp)
	sw $s0,4($sp)

	move $s0,$a0 #desciptor
	#Close the file 
	li   $v0, 16
	move $a0, $s0
	syscall
	lw $ra, ($sp)
	lw $s0,4($sp)
	addi $sp,$sp,8
	jr $ra
#KET THUC| HAM DONG FILE


#HAM LAY DO DAI CHUOI (DUNG CHO HAM GHI FILE)
#THAM SO:	$a0:Chuoi
#TRA VE:	$v0:So (Do dai chuoi)
StrLength:
	addi $sp,$sp,-8
	sw $ra,($sp)
	sw $s0,4($sp)

	move $s0,$a0
	li $t0,0
StrLength.Loop:
	lb $t1,($s0)
	beq $t1,'\0',StrLength.Return

	addi $s0,$s0,1
	addi $t0,$t0,1
	j StrLength.Loop
StrLength.Return:
	#addi $t0,$t0,1
	move $v0,$t0	
	lw $ra,($sp)
	lw $s0,4($sp)
	addi $sp,$sp,8
	jr $ra
#KET THUC| HAM LAY DO DAI CHUOI (DUNG CHO HAM GHI FILE)

#HAM CHUYEN SO VE CHUOI (DUNG CHO HAM GHI FILE)
#THAM SO:	$a0: So
#TRA VE:	$v0: Chuoi
NumberToString:
	addi $sp,$sp,-12
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)

	la $t0,temp
	
	move $s0,$a0
	la $s1,itos
	li $t1,0
	li $t2,10
	li $t4,0
	#tach so r luu vao 1 mang tam
NumberToString.Loop1:

	div $s0,$t2
	mflo $s0
	mfhi $t3
	sw $t3,($t0)
	beq $s0,$zero,NumberToString.Loop2
	addi $t0,$t0,4
	addi $t1,$t1,4
	j NumberToString.Loop1

	#lay cac so trong mang tam tra ve chuoi
NumberToString.Loop2:
	lw $t3,($t0)
	addi $t3,$t3,48
	sb $t3,($s1)
	addi $t4,$t4,1
	beq $t1,$zero,NumberToString.Return
	addi $s1,$s1,1
	subi $t1,$t1,4
	subi $t0,$t0,4
	j NumberToString.Loop2
NumberToString.Return:
	addi $s1,$s1,1
	li $t2,'\0'
	sb $t2,($s1)
	sub $s1,$s1,$t4
	
	move $v0,$s1
	
	lw $s0,4($sp)
	lw $s1,8($sp)
	addi $sp,$sp,12
	jr $ra
#KET THUC| HAM CHUYEN SO VE CHUOI (DUNG CHO HAM GHI FILE)


# Ham chuyen doi dinh dang DD/MM/YYYY
#	$a0 TIME
#	$a1 type
#	type 'A': MM/DD/YYYY
#	type 'B': Month DD, YYYY
#	type 'C': DD Month, YYYY
Convert_A:
	# DD/MM/YYYY -> MM/DD/YYYY
	# only swap day <-> month
	# get DD, MM
	lb $t0, 0($a0)		# $t0 = TIME[0]
	lb $t1, 1($a0)		# $t1 = TIME[1]
	lb $t3, 3($a0)		# $t3 = TIME[3]
	lb $t4, 4($a0)		# $t4 = TIME[4]
	# swap
	sb $t3, 0($a0)		# TIME[0] = $t3
	sb $t4, 1($a0)		# TIME[1] = $t4
	sb $t0, 3($a0)		# TIME[3] = $t0
	sb $t1, 4($a0)		# TIME[4] = $t1
	j Convert_exit
Convert_B:
	# DD/MM/YYYY -> Month DD, YYYY
	# save to stack
	addi $sp, $sp, -32
	sw $ra, 28($sp)
	sw $a0, 24($sp)
	sw $a1, 20($sp)

	# Month 1 -> January
	jal Month
	add $a0, $zero, $v0	# $a0 = month (int)
	jal Month_in_String
	sw $v0, 16($sp)		# save month (string)

	lw $a0, 24($sp)		# $a0 = TIME

	# Copy " DD, " from TIME[0-1] to TEMP_1
	la $t0, TEMP_1
	addi $t1, $zero, 32	# 32 is ' '
	sb $t1, 0($t0)		# TEMP_1[0] = ' '

	lb $t1, 0($a0)		# D1 = TIME[0]
	sb $t1, 1($t0)		# TEMP_1[1] = D1
	lb $t1, 1($a0)		# D2 = TIME[1]
	sb $t1, 2($t0)		# TEMP_1[2] = D2

	addi $t1, $zero, 44	# 44 is ','
	sb $t1, 3($t0)		# TEMP_1[3] = ','
	addi $t1, $zero, 32	# 32 is ' '
	sb $t1, 4($t0)		# TEMP_1[4] = ' '
	sb $zero, 5($t0)	# TEMP_1[5] = '\0'
	sw $t0, 12($sp)		# save TEMP_1

	# Copy "YYYY" from TIME[6:9] to TEMP_2
	la $t0, TEMP_2
	lb $t1, 6($a0) 		# Y1 = TIME[6]
	sb $t1, 0($t0)		# TEMP_2[0] = Y1
	lb $t1, 7($a0) 		# Y2 = TIME[7]
	sb $t1, 1($t0)		# TEMP_2[1] = Y2
	lb $t1, 8($a0) 		# Y3 = TIME[8]
	sb $t1, 2($t0)		# TEMP_2[2] = Y3
	lb $t1, 9($a0) 		# Y4 = TIME[9]
	sb $t1, 3($t0)		# TEMP_2[3] = Y4
	sb $zero, 4($t0)	# TIME_2[4] = '\0'
	sw $t0, 8($sp) 		# save TEMP_2

	# Copy month (string) to TIME
	lw $a1, 16($sp)		# $a1 = month (string)
	jal strcpy

	# Noi " DD, " luu trong TEMP_1 vao TIME
	lw $a1, 12($sp)		# $a1 = TEMP_1
	jal strcat

	# Noi "YYYY" luu trong TEMP_2 vao TIME
	lw $a1, 8($sp)		# $a1 = TEMP_2
	jal strcat

	# restore from stack
	lw $ra, 28($sp)
	lw $a0, 24($sp)
	lw $a1, 20($sp)
	addi $sp, $sp, 32

	j Convert_exit
Convert_C:
	# DD/MM/YYYY -> DD Month, YYYY
	# save to stack
	addi $sp, $sp, -32
	sw $ra, 28($sp)
	sw $a0, 24($sp)
	sw $a1, 20($sp)

	# Month 1 -> January
	jal Month
	add $a0, $zero, $v0	# $a0 = month (int)
	jal Month_in_String
	sw $v0, 16($sp)		# save month (string)

	lw $a0, 24($sp)		# $a0 = TIME

	# Copy "DD " from TIME[0-1] to TEMP_1
	la $t0, TEMP_1
	lb $t1, 0($a0)		# D1 = TIME[0]
	sb $t1, 0($t0)		# TEMP_1[0] = D1
	lb $t1, 1($a0)		# D2 = TIME[1]
	sb $t1, 1($t0)		# TEMP_1[1] = D2

	addi $t1, $zero, 32	# 32 is ' '
	sb $t1, 2($t0)		# TEMP_1[2] = ' '
	sb $zero, 3($t0)	# TEMP_1[3] = '\0'
	sw $t0, 12($sp)		# save TEMP_1

	# Copy ", YYYY" from TIME[6:9] to TEMP_2
	la $t0, TEMP_2
	addi $t1, $zero, 44	# 44 is ','
	sb $t1, 0($t0)		# TEMP_2[0] = ','
	addi $t1, $zero, 32	# 32 is ' '
	sb $t1, 1($t0)		# TEMP_2[1] = ' '

	lb $t1, 6($a0) 		# Y1 = TIME[6]
	sb $t1, 2($t0)		# TEMP_2[2] = Y1
	lb $t1, 7($a0) 		# Y2 = TIME[7]
	sb $t1, 3($t0)		# TEMP_2[3] = Y2
	lb $t1, 8($a0) 		# Y3 = TIME[8]
	sb $t1, 4($t0)		# TEMP_2[4] = Y3
	lb $t1, 9($a0) 		# Y4 = TIME[9]
	sb $t1, 5($t0)		# TEMP_2[5] = Y4
	sb $zero, 6($t0)	# TIME_2[6] = '\0'
	sw $t0, 8($sp) 		# save TEMP_2

	# Copy "DD " luu trong TEMP_1 vao TIME
	lw $a1, 12($sp)		# $a1 = TEMP_1
	jal strcpy

	# Noi month (string) vao TIME
	lw $a1, 16($sp)		# $a1 = month (string)
	jal strcat

	# Noi ", YYYY" luu trong TEMP_2 vao TIME
	lw $a1, 8($sp)		# $a1 = TEMP_2
	jal strcat

	# restore from stack
	lw $ra, 28($sp)
	lw $a0, 24($sp)
	lw $a1, 20($sp)
	addi $sp, $sp, 32

	j Convert_exit
Convert_khonghople:
	# save to stack
	addi $sp, $sp, -8
	sw $a0, 4($sp)
	sw $a1, 0($sp)

	la $a0, msg_convert_khonghople
	addi $v0, $zero, 4	# syscall print string
	syscall

	# restore from stack
	lw $a0, 4($sp)
	lw $a1, 0($sp)
	addi $sp, $sp, 8
	j Convert_exit
Convert_exit:
	add $v0, $zero, $a0	# tra ve $a0 giu dia chi TIME
	jr $ra


# Ham copy string y -> string x
# 	$a0: string x
#	$a1: string y	
strcpy:
	# save to stack
	addi $sp, $sp, -4
	sw $s0, 0($sp)

	add $s0, $zero, $zero 		# i = 0
strcpy_loop:
	add $t0, $s0, $a1		# $t0 = &y[i]
	lb $t1, 0($t0) 			# $t1 = y[i]
	add $t2, $s0, $a0 		# $t2 = &x[i]
	sb $t1, 0($t2) 			# x[i] = y[i]
	beq $t1, $zero, strcpy_exit	# Neu x[i] == '\0'
	addi $s0, $s0, 1		# i += 1
	j strcpy_loop
strcpy_exit:
	# restore from stack
	lw $s0, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
# Ham noi y vao x
# x la "aa", y la "b" ket qua x la "aab"
# 	$a0 string x
#	$a1 string y
strcat:
	# save to stack
	addi $sp, $sp, -8
	sw $s0, 0($sp)
	sw $s1, 4($sp)

	add $s0, $zero, $zero		# $s0 la i = 0
	add $s1, $zero, $zero 		# $s1 la j = 0
strcat_findEndLoop:
	add $t3, $a0, $s0
	lb $t4, 0($t3) 			# $t4 = x[i]
	beq $t4, $zero, appendLoop	# neu x[i] == '\0'
	addi $s0, $s0, 1  		# i += 1
	j strcat_findEndLoop
appendLoop:
	add $t4, $a1, $s1 		# $t4 = &y[j]
	lb $t5, 0($t4) 			# $t5 = y[j]
	add $t3, $a0, $s0 		# $t3 = &x[i]
	sb $t5, 0($t3) 			# x[i] = y[j]
	beq $t5, $zero, strcat_exit	# neu x[i] == '\0'
	addi $s0, $s0, 1		# i += 1
	addi $s1, $s1, 1		# j += 1
	j appendLoop
strcat_exit:
	# restore from stack
	lw $s0, 0($sp)
	lw $s1, 4($sp)
	addi $sp, $sp, 8
	jr $ra
	
# Ham tra ve ten thang trong nam
#	$a0 month (integer)
# 	$v0 month (string)
Month_in_String:
	slti $t0, $a0, 2 	# if month < 2 => month == 1
	bne $t0, $zero, Jan 	# jump to January

	slti $t0, $a0, 3 	# if month < 3 => month == 2
	bne $t0, $zero, Feb 	# jump to February

	slti $t0, $a0, 4	# if month < 4 => month == 3
	bne $t0, $zero, Mar 	# jump to March

	slti $t0, $a0, 5 	# if month < 5 => month == 4
	bne $t0, $zero, Apr 	# jump to April

	slti $t0, $a0, 6 	# if month < 6 => month == 5
	bne $t0, $zero, May 	# jump to May

	slti $t0, $a0, 7 	# if month < 7 => month == 6
	bne $t0, $zero, Jun 	# jump to June

	slti $t0, $a0, 8 	# if month < 8 => month == 7
	bne $t0, $zero, Jul 	# jump to July

	slti $t0, $a0, 9 	# if month < 9 => month == 8
	bne $t0, $zero, Aug 	# jump to August

	slti $t0, $a0, 10 	# if month < 10 => month == 9
	bne $t0, $zero, Sep 	# jump to September

	slti $t0, $a0, 11 	# if month < 11 => month == 10
	bne $t0, $zero, Oct 	# jump to October

	slti $t0, $a0, 12 	# if month < 12 => month == 11
	bne $t0, $zero, Nov 	# jump to November

	j Dec 			# jump to December
Jan:
	la $v0, Month_1
	j Month_in_Year_exit
Feb:
	la $v0, Month_2
	j Month_in_Year_exit
Mar:
	la $v0, Month_3
	j Month_in_Year_exit
Apr:
	la $v0, Month_4
	j Month_in_Year_exit
May:
	la $v0, Month_5
	j Month_in_Year_exit
Jun:
	la $v0, Month_6
	j Month_in_Year_exit
Jul:
	la $v0, Month_7
	j Month_in_Year_exit
Aug:
	la $v0, Month_8
	j Month_in_Year_exit
Sep:
	la $v0, Month_9
	j Month_in_Year_exit
Oct:
	la $v0, Month_10
	j Month_in_Year_exit
Nov:
	la $v0, Month_11
	j Month_in_Year_exit
Dec:
	la $v0, Month_12
Month_in_Year_exit:
	jr $ra


Exit:

