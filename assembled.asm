BRCH _START_BODY
DATA number 0
DATA current_number 0
DATA temp 0
DATA fn 0
DATA fnp1 1
LABEL _FUNCTION_iterate_once
MOV (0 _STACK_POINTER) _RETURN_ADDRESS
ADD _STACK_POINTER _STACK_POINTER 1
MOV _RESULT fn
MOV temp _RESULT
MOV _RESULT fnp1
MOV fn _RESULT
MOV _RESULT fnp1
MOV (0 _STACK_POINTER) _RESULT
ADD _STACK_POINTER _STACK_POINTER 1
MOV _RESULT temp
ADD _RESULT (-1 _STACK_POINTER) _RESULT
SUB _STACK_POINTER _STACK_POINTER 1
MOV fnp1 _RESULT
MOV _RESULT current_number
MOV (0 _STACK_POINTER) _RESULT
ADD _STACK_POINTER _STACK_POINTER 1
MOV _RESULT 1
ADD _RESULT (-1 _STACK_POINTER) _RESULT
SUB _STACK_POINTER _STACK_POINTER 1
MOV current_number _RESULT
MOV _RETURN_ADDRESS (-1 _STACK_POINTER)
SUB _STACK_POINTER _STACK_POINTER 1
BRCH (0 _RETURN_ADDRESS)
LABEL _START_BODY
PSTR "enter an integer, n"
READ number
LABEL _LABEL_1
MOV _RESULT current_number
MOV (0 _STACK_POINTER) _RESULT
ADD _STACK_POINTER _STACK_POINTER 1
MOV _RESULT number
LT _RESULT (-1 _STACK_POINTER) _RESULT
SUB _STACK_POINTER _STACK_POINTER 1
CBNZ _RESULT _LABEL_2
BRCH _LABEL_3
LABEL _LABEL_2
BLNK _RETURN_ADDRESS _FUNCTION_iterate_once
BRCH _LABEL_1
LABEL _LABEL_3
PSTR "the nth fibonacci number is"
MOV _RESULT fn
PVAL _RESULT
BRCH _HALT_LABEL
LABEL _HALT_LABEL
HALT
DATA _RESULT 0
DATA _RETURN_ADDRESS 0
DATA _STACK_POINTER _STACK
LABEL _STACK