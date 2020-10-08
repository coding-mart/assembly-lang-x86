INCLUDE IRVINE32.INC
.DATA
num DWORD ?
NUM1 DWORD
NUM2 DWORD
NUM3 DWORD
NUM4 DWORD
NUM5 DWORD
SUM1 DWORD
SUM2 DWORD
SUM3 DWORD
SUM4 DWORD
MSG BYTE "Please enter a three digit number with distinct digits only",0
MSG1 BYTE"Number contains 3 digits.......",0
MSG2 BYTE"Proceeding to next step......",0
MSG3 BYTE"Initiating Process.....",0
MSG4 BYTE"Number does not contain 3 digits...... ",0
MSG5 BYTE"It is either greater than 999 or less than 100.....",0
MSG6 BYTE"Failed to initialize the process.....",0
MSG7 BYTE"Welcome to the process",0
MSG8 BYTE"checking the number for distinct digits.....",0
MSG9 BYTE"Please wait while system checks being performed......",0
MSG10 BYTE"Number contains distinct digits......",0
MSG11 BYTE"Number is accepted....",0
MSG12 BYTE"Proceeding to next step.....",0
MSG13 BYTE"Number contains similar digits......",0
MSG14 BYTE"Aborting Process......",0
MSG15 BYTE"Sum contains 3 digits.......",0
MSG16 BYTE"Proceeding to next step......",0
MSG17 BYTE"Sum does not contain 3 digits...... ",0
MSG18 BYTE"Sum contains identical digits......",0
MSG19 BYTE"sum is accepted....",0
MSG20 BYTE"Proceeding to final step.....",0
MSG21 BYTE"Sum contains distinct digits......",0
MSG22 BYTE"CONGRATULATIONS>>>>",0
MSG23 BYTE"The Process is COMPLETE.......",0
MSG24 BYTE"You have successfully completed the puzzle....",0
MSG25 BYTE"Number is found and it is : ",0
MSG16 BYTE"it contains distinct digits: ",0
MSG16 BYTE"Sum is true with identical digits:",0
MSG16 BYTE"it contains identical digits: ",0
MSG16 BYTE"Sum contains invalid digits......",0
MSG16 BYTE"MISSION FAILED.......",0
MSG16 BYTE"Quiting the PROCESS SORRY........ :-(",0


.CODE
main proc
call clrscr
lst:
lea edx,msg1
call writestring
call crlf
call readint
mov num,eax
mov eax,num
cmp eax,100
jge l1
jl l2
l1:
cmp eax,999
jle l3
jg l2
l2:
lea edx,msg3
call writestring
call crlf
lea edx,msg4
call writestring
call crlf
jmp lst
l3:
lea edx,msg2
call writestring
call crlf
lea edx,msg5
call writestring
call crlf
lea edx,msg6
call writestring
call crlf
lea edx,msg7
call writestring
call crlf
mov eax,num
mov num1,eax
mov eax,num1
mov edx,0
mov ebx,10
div ebx
mov num2,edx
mov num1,eax
mov edx,0
div ebx
mov num3,edx
mov num1,eax
mov eax,num1
mov num4,eax
mov eax,num2
cmp eax,num3
jne l4
jmp l5
l4:
mov eax,num3
cmp eax,num4
jne l6
jmp l5
l5:
lea edx,msg10
call writestring
call crlf
lea edx,msg11
call writestring
call crlf
jmp lst
l6:
mov eax,num4
cmp eax,num2
jne l7
jmp l5
l7:
lea edx,msg8
call writestring
call crlf
lea edx,msg9
call writestring
call crlf
mov eax,num
add eax,num
add eax,num
mov sum,eax
mov eax,sum
cmp eax,100
jge l8
jl l9
l8:
cmp eax,999
jle l10
jg l9
l9:
lea edx,msg13
call writestring
call crlf
lea edx,msg14
call writestring
call crlf
jmp lst
l10:
lea edx,msg12
call writestring
call crlf
mov eax,sum
mov sum1,eax
mov edx,0
mov eax,sum1
mov ebx,10
div ebx
mov sum2,edx
mov sum1,eax
mov edx,0
div ebx
mov sum3,edx
mov sum1,eax
mov eax,sum1
mov sum4,eax
mov eax,sum2
cmp eax,sum3
je l11
jne l12
l11:
mov eax,sum3
cmp eax,sum4
je l13
jne l12
l12:
lea edx,msg17
call writestring
call crlf
jmp lst
l13:
mov eax,sum4
cmp eax,sum2
je l14
jne l12
l14:
lea edx,msg15
call writestring
call crlf
lea edx,msg16
call writestring
call crlf
mov eax,sum2
cmp eax,num2
je l15
jne l16
l15:
mov eax,sum3
cmp eax,num2
je l17
jne l16
l16:
lea edx,msg23
call writestring
call crlf
lea edx,msg24
call writestring
call crlf
lea edx,msg25
call writestring
call crlf
jmp ex
l17:
mov eax,sum4
cmp eax,num2
je l18
jne l16
l18:
lea edx,msg18
call writestring
call crlf
lea edx,msg19
call writestring
mov eax,num
call writedec
call crlf
lea edx,msg20
call writestring
call crlf
mov eax,num4
call writedec
call crlf
mov eax,num3
call writedec
call crlf
mov eax,num2
call writedec
call crlf
lea edx,msg21
call writestring
mov eax,sum
call writedec
call crlf
lea edx,msg22
call writestring
call crlf
mov eax,sum4
call writedec
call crlf
mov eax,sum3
call writedec
call crlf
mov eax,sum2
call writedec
call crlf
ex:
exit
main endp
end main
