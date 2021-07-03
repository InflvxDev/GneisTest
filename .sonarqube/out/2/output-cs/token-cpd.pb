™(
IC:\Users\SEBASTIAN\Documents\GneisRelease-master\Logica\CheckinService.cs
	namespace 	
Logica
 
{ 
public 

class 
CheckinService 
{		 
private

 
readonly

 
ProyectoContext

 (
_context

) 1
;

1 2
public 
CheckinService 
( 
ProyectoContext -
context. 5
)5 6
{6 7
_context 
= 
context 
; 
} 	
public "
GuardarCheckinResponse %
Guardar& -
(- .
Checkin. 5
checkin6 =
)= >
{> ?
try 
{ 
var 
checkinbuscado "
=# $
_context% -
.- .
Checkins. 6
.6 7
Find7 ;
(; <
checkin< C
.C D
	IdcheckinD M
)M N
;N O
if 
( 
checkinbuscado !
!=" $
null$ (
)( )
{) *
return 
new "
GuardarCheckinResponse 5
(6 7
$str7 ^
)^ _
;_ `
} 
_context 
. 
Checkins !
.! "
Add" %
(% &
checkin& -
)- .
;. /
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new "
GuardarCheckinResponse 1
(2 3
checkin3 :
): ;
;; <
} 
catch 
( 
	Exception 
e 
) 
{ 
return 
new "
GuardarCheckinResponse 1
(2 3
$"3 5
$str5 M
{M N
eN O
.O P
MessageP W
}W X
"X Y
)Y Z
;Z [
} 
}   	
public"" 
List"" 
<"" 
Checkin"" 
>"" 
ConsultarTodos"" +
(""+ ,
)"", -
{""- .
List## 
<## 
Checkin## 
>## 
checkins## "
=### $
_context##% -
.##- .
Checkins##. 6
.##6 7
ToList##7 =
(##= >
)##> ?
;##? @
return$$ 
checkins$$ 
;$$ 
}%% 	
public(( 
string(( 
Eliminar(( 
(((  
string((  &
	idcheckin((' 0
)((0 1
{((1 2
try)) 
{)) 
var** 
checkinBuscado** "
=**# $
_context**% -
.**- .
Checkins**. 6
.**6 7
Find**7 ;
(**; <
	idcheckin**< E
)**E F
;**F G
if++ 
(++ 
checkinBuscado++ !
!=++" $
null++$ (
)++( )
{++) *
_context,, 
.,, 
Checkins,, %
.,,% &
Remove,,& ,
(,,, -
checkinBuscado,,- ;
),,; <
;,,< =
_context-- 
.-- 
SaveChanges-- (
(--( )
)--) *
;--* +
return.. 
(.. 
$".. 
$str.. M
"..M N
)..N O
;..O P
}// 
else00 
{00 
return11 
(11 
$"11 
$str11 X
"11X Y
)11Y Z
;11Z [
}22 
}33 
catch44 
(44 
	Exception44 
e44 
)44 
{44 
return55 
$"55 
$str55 1
{551 2
e552 3
.553 4
Message554 ;
}55; <
"55< =
;55= >
}66 
}77 	
}88 
public99 

class99 "
GuardarCheckinResponse99 '
{:: 
public;; "
GuardarCheckinResponse;; %
(;;% &
Checkin;;& -
checkin;;. 5
);;5 6
{<< 	
Error== 
=== 
false== 
;== 
Checkin>> 
=>> 
checkin>> 
;>> 
}?? 	
public@@ "
GuardarCheckinResponse@@ %
(@@% &
string@@& ,
mensaje@@- 4
)@@4 5
{AA 	
ErrorBB 
=BB 
trueBB 
;BB 
MensajeCC 
=CC 
mensajeCC 
;CC 
}DD 	
publicEE 
boolEE 
ErrorEE 
{EE 
getEE 
;EE  
setEE! $
;EE$ %
}EE& '
publicFF 
stringFF 
MensajeFF 
{FF 
getFF  #
;FF# $
setFF% (
;FF( )
}FF* +
publicGG 
CheckinGG 
CheckinGG 
{GG  
getGG! $
;GG$ %
setGG& )
;GG) *
}GG+ ,
}HH 
}JJ ¿(
JC:\Users\SEBASTIAN\Documents\GneisRelease-master\Logica\CheckoutService.cs
	namespace 	
Logica
 
{ 
public 

class 
CheckoutService  
{		 
private

 
readonly

 
ProyectoContext

 (
_context

) 1
;

1 2
public 
CheckoutService 
( 
ProyectoContext .
context/ 6
)6 7
{7 8
_context 
= 
context 
; 
} 	
public #
GuardarCheckoutResponse &
Guardar' .
(. /
Checkout/ 7
checkout8 @
)@ A
{A B
try 
{ 
var 
checkoutbuscado #
=$ %
_context& .
.. /
	Checkouts/ 8
.8 9
Find9 =
(= >
checkout> F
.F G

IdcheckoutG Q
)Q R
;R S
if 
( 
checkoutbuscado "
!=# %
null% )
)) *
{* +
return 
new #
GuardarCheckoutResponse 6
(7 8
$str8 ^
)^ _
;_ `
} 
_context 
. 
	Checkouts "
." #
Add# &
(& '
checkout' /
)/ 0
;0 1
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new #
GuardarCheckoutResponse 2
(3 4
checkout4 <
)< =
;= >
} 
catch 
( 
	Exception 
e 
) 
{ 
return 
new #
GuardarCheckoutResponse 2
(3 4
$"4 6
$str6 N
{N O
eO P
.P Q
MessageQ X
}X Y
"Y Z
)Z [
;[ \
} 
} 	
public!! 
List!! 
<!! 
Checkout!! 
>!! 
ConsultarTodos!! ,
(!!, -
)!!- .
{!!. /
List"" 
<"" 
Checkout"" 
>"" 
	checkouts"" $
=""% &
_context""' /
.""/ 0
	Checkouts""0 9
.""9 :
ToList"": @
(""@ A
)""A B
;""B C
return## 
	checkouts## 
;## 
}$$ 	
public'' 
string'' 
Eliminar'' 
(''  
string''  &

idcheckout''' 1
)''1 2
{''2 3
try(( 
{(( 
var)) 
checkoutBuscado)) #
=))$ %
_context))& .
.)). /
	Checkouts))/ 8
.))8 9
Find))9 =
())= >

idcheckout))> H
)))H I
;))I J
if** 
(** 
checkoutBuscado** "
!=**# %
null**% )
)**) *
{*** +
_context++ 
.++ 
	Checkouts++ &
.++& '
Remove++' -
(++- .
checkoutBuscado++. =
)++= >
;++> ?
_context,, 
.,, 
SaveChanges,, (
(,,( )
),,) *
;,,* +
return-- 
(-- 
$"-- 
$str-- M
"--M N
)--N O
;--O P
}.. 
else// 
{// 
return00 
(00 
$"00 
$str00 X
"00X Y
)00Y Z
;00Z [
}11 
}22 
catch33 
(33 
	Exception33 
e33 
)33 
{33 
return44 
$"44 
$str44 1
{441 2
e442 3
.443 4
Message444 ;
}44; <
"44< =
;44= >
}55 
}66 	
}77 
public99 

class99 #
GuardarCheckoutResponse99 (
{:: 
public;; #
GuardarCheckoutResponse;; &
(;;& '
Checkout;;' /
checkout;;0 8
);;8 9
{<< 	
Error== 
=== 
false== 
;== 
Checkout>> 
=>> 
checkout>> 
;>>  
}?? 	
public@@ #
GuardarCheckoutResponse@@ &
(@@& '
string@@' -
mensaje@@. 5
)@@5 6
{AA 	
ErrorBB 
=BB 
trueBB 
;BB 
MensajeCC 
=CC 
mensajeCC 
;CC 
}DD 	
publicEE 
boolEE 
ErrorEE 
{EE 
getEE 
;EE  
setEE! $
;EE$ %
}EE& '
publicFF 
stringFF 
MensajeFF 
{FF 
getFF  #
;FF# $
setFF% (
;FF( )
}FF* +
publicGG 
CheckoutGG 
CheckoutGG  
{GG! "
getGG# &
;GG& '
setGG( +
;GG+ ,
}GG- .
}HH 
}II ãA
IC:\Users\SEBASTIAN\Documents\GneisRelease-master\Logica\ClienteService.cs
	namespace 	
Logica
 
{ 
public 

class 
ClienteService 
{		 
private

 
readonly

 
ProyectoContext

 (
_context

) 1
;

1 2
public 
ClienteService 
( 
ProyectoContext -
context. 5
)5 6
{6 7
_context 
= 
context 
; 
} 	
public "
GuardarClienteResponse %
Guardar& -
(- .
Cliente. 5
cliente6 =
)= >
{> ?
try 
{ 
var 
Clinetebuscado "
=# $
_context% -
.- .
Clientes. 6
.6 7
Find7 ;
(; <
cliente< C
.C D
CedulaD J
)J K
;K L
if 
( 
Clinetebuscado !
!=" $
null$ (
)( )
{) *
return 
new "
GuardarClienteResponse 5
(6 7
$str7 ^
)^ _
;_ `
} 
_context 
. 
Clientes !
.! "
Add" %
(% &
cliente& -
)- .
;. /
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new "
GuardarClienteResponse 1
(2 3
cliente3 :
): ;
;; <
} 
catch 
( 
	Exception 
e 
) 
{ 
return 
new "
GuardarClienteResponse 1
(2 3
$"3 5
$str5 M
{M N
eN O
.O P
MessageP W
}W X
"X Y
)Y Z
;Z [
} 
} 	
public!! 
List!! 
<!! 
Cliente!! 
>!! 
ConsultarTodos!! +
(!!+ ,
)!!, -
{!!- .
List"" 
<"" 
Cliente"" 
>"" 
clientes"" "
=""# $
_context""% -
.""- .
Clientes"". 6
.""6 7
ToList""7 =
(""= >
)""> ?
;""? @
return## 
clientes## 
;## 
}$$ 	
public&& 
Cliente&& 
BuscarPorID&& "
(&&" #
string&&# )
cedula&&* 0
)&&0 1
{&&1 2
Cliente'' 
cliente'' 
='' 
_context'' &
.''& '
Clientes''' /
.''/ 0
Find''0 4
(''4 5
cedula''5 ;
)''; <
;''< =
return(( 
cliente(( 
;(( 
})) 	
public++ 
string++ 
Eliminar++ 
(++  
string++  &
cedula++' -
)++- .
{++. /
try,, 
{,, 
var-- 
ClienteBuscado-- "
=--# $
_context--% -
.--- .
Clientes--. 6
.--6 7
Find--7 ;
(--; <
cedula--< B
)--B C
;--C D
if.. 
(.. 
ClienteBuscado.. !
!=.." $
null..$ (
)..( )
{..) *
_context// 
.// 
Clientes// %
.//% &
Remove//& ,
(//, -
ClienteBuscado//- ;
)//; <
;//< =
_context00 
.00 
SaveChanges00 (
(00( )
)00) *
;00* +
return11 
(11 
$"11 
$str11 M
"11M N
)11N O
;11O P
}22 
else33 
{33 
return44 
(44 
$"44 
$str44 X
"44X Y
)44Y Z
;44Z [
}55 
}66 
catch77 
(77 
	Exception77 
e77 
)77 
{77 
return88 
$"88 
$str88 1
{881 2
e882 3
.883 4
Message884 ;
}88; <
"88< =
;88= >
}99 
}:: 	
public<< "
GuardarClienteResponse<< %
	Modificar<<& /
(<<0 1
Cliente<<1 8
clientenuevo<<9 E
)<<E F
{<<F G
try== 
{== 
var>> 
clienteviejo>>  
=>>! "
_context>># +
.>>+ ,
Clientes>>, 4
.>>4 5
Find>>5 9
(>>9 :
clientenuevo>>: F
.>>F G
Cedula>>G M
)>>M N
;>>N O
if?? 
(?? 
clienteviejo?? 
!=??  "
null??" &
)??& '
{??' (
clienteviejoAA  
.AA  !
CedulaAA! '
=AA( )
clientenuevoAA* 6
.AA6 7
CedulaAA7 =
;AA= >
clienteviejoBB  
.BB  !
NombreBB! '
=BB( )
clientenuevoBB* 6
.BB6 7
NombreBB7 =
;BB= >
clienteviejoCC  
.CC  !
EdadCC! %
=CC& '
clientenuevoCC( 4
.CC4 5
EdadCC5 9
;CC9 :
clienteviejoDD  
.DD  !
SexoDD! %
=DD& '
clientenuevoDD( 4
.DD4 5
SexoDD5 9
;DD9 :
clienteviejoEE  
.EE  !
TelefonoEE! )
=EE* +
clientenuevoEE, 8
.EE8 9
TelefonoEE9 A
;EEA B
clienteviejoFF  
.FF  !
CorreoFF! '
=FF( )
clientenuevoFF* 6
.FF6 7
CorreoFF7 =
;FF= >
clienteviejoGG  
.GG  !
	DireccionGG! *
=GG+ ,
clientenuevoGG- 9
.GG9 :
	DireccionGG: C
;GGC D
clienteviejoHH  
.HH  !

HospedajesHH! +
=HH, -
clientenuevoHH. :
.HH: ;

HospedajesHH; E
;HHE F
_contextKK 
.KK 
ClientesKK %
.KK% &
UpdateKK& ,
(KK, -
clienteviejoKK- 9
)KK9 :
;KK: ;
_contextLL 
.LL 
SaveChangesLL (
(LL( )
)LL) *
;LL* +
returnMM 
newMM "
GuardarClienteResponseMM 5
(MM6 7
clienteviejoMM7 C
)MMC D
;MMD E
}NN 
elseOO 
{OO 
returnPP 
newPP "
GuardarClienteResponsePP 5
(PP6 7
$"PP7 9
$strPP9 s
"PPs t
)PPt u
;PPu v
}QQ 
}RR 
catchSS 
(SS 
	ExceptionSS 
eSS 
)SS 
{SS 
returnTT 
newTT "
GuardarClienteResponseTT 1
(TT1 2
$"TT2 4
$strTT4 L
{TTL M
eTTM N
.TTN O
MessageTTO V
}TTV W
"TTW X
)TTX Y
;TTY Z
}UU 
}VV 	
}XX 
publicYY 

classYY "
GuardarClienteResponseYY '
{ZZ 
public[[ "
GuardarClienteResponse[[ %
([[% &
Cliente[[& -
cliente[[. 5
)[[5 6
{\\ 	
Error]] 
=]] 
false]] 
;]] 
Cliente^^ 
=^^ 
cliente^^ 
;^^ 
}__ 	
public`` "
GuardarClienteResponse`` %
(``% &
string``& ,
mensaje``- 4
)``4 5
{aa 	
Errorbb 
=bb 
truebb 
;bb 
Mensajecc 
=cc 
mensajecc 
;cc 
}dd 	
publicee 
boolee 
Erroree 
{ee 
getee 
;ee  
setee! $
;ee$ %
}ee& '
publicff 
stringff 
Mensajeff 
{ff 
getff  #
;ff# $
setff% (
;ff( )
}ff* +
publicgg 
Clientegg 
Clientegg 
{gg  
getgg! $
;gg$ %
setgg& )
;gg) *
}gg+ ,
}hh 
}ii @
JC:\Users\SEBASTIAN\Documents\GneisRelease-master\Logica\EmpleadoService.cs
	namespace 	
Logica
 
{ 
public 

class 
EmpleadoService  
{		 
private

 
readonly

 
ProyectoContext

 (
_context

) 1
;

1 2
public 
EmpleadoService 
( 
ProyectoContext .
context/ 6
)6 7
{7 8
_context 
= 
context 
; 
} 	
public #
GuardarEmpleadoResponse &
Guardar' .
(. /
Empleado/ 7
empleado8 @
)@ A
{A B
try 
{ 
var 
empleadobuscado #
=$ %
_context& .
.. /
	Empleados/ 8
.8 9
Find9 =
(= >
empleado> F
.F G
CedulaG M
)M N
;N O
if 
( 
empleadobuscado "
!=# %
null% )
)) *
{* +
return 
new #
GuardarEmpleadoResponse 6
(7 8
$str8 e
)e f
;f g
} 
_context 
. 
	Empleados "
." #
Add# &
(& '
empleado' /
)/ 0
;0 1
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new #
GuardarEmpleadoResponse 2
(3 4
empleado4 <
)< =
;= >
} 
catch 
( 
	Exception 
e 
) 
{ 
return 
new #
GuardarEmpleadoResponse 2
(3 4
$"4 6
$str6 N
{N O
eO P
.P Q
MessageQ X
}X Y
"Y Z
)Z [
;[ \
} 
} 	
public!! 
List!! 
<!! 
Empleado!! 
>!! 
ConsultarTodos!! ,
(!!, -
)!!- .
{!!. /
List"" 
<"" 
Empleado"" 
>"" 
	empleados"" $
=""% &
_context""' /
.""/ 0
	Empleados""0 9
.""9 :
ToList"": @
(""@ A
)""A B
;""B C
return## 
	empleados## 
;## 
}$$ 	
public&& 
string&& 
Eliminar&& 
(&&  
string&&  &
cedula&&' -
)&&- .
{&&. /
try'' 
{'' 
var(( 
empleadobuscado(( #
=(($ %
_context((& .
.((. /
	Empleados((/ 8
.((8 9
Find((9 =
(((= >
cedula((> D
)((D E
;((E F
if)) 
()) 
empleadobuscado)) "
!=))# %
null))% )
)))) *
{))* +
_context** 
.** 
	Empleados** &
.**& '
Remove**' -
(**- .
empleadobuscado**. =
)**= >
;**> ?
_context++ 
.++ 
SaveChanges++ (
(++( )
)++) *
;++* +
return,, 
(,, 
$",, 
$str,, M
",,M N
),,N O
;,,O P
}-- 
else.. 
{.. 
return// 
(// 
$"// 
$str// X
"//X Y
)//Y Z
;//Z [
}00 
}11 
catch22 
(22 
	Exception22 
e22 
)22 
{22 
return33 
$"33 
$str33 1
{331 2
e332 3
.333 4
Message334 ;
}33; <
"33< =
;33= >
}44 
}55 	
public77 #
GuardarEmpleadoResponse77 &
	Modificar77' 0
(771 2
Empleado772 :
empleadonuevo77; H
)77H I
{77I J
try88 
{88 
var99 
empleadoviejo99 !
=99" #
_context99$ ,
.99, -
	Empleados99- 6
.996 7
Find997 ;
(99; <
empleadonuevo99< I
.99I J
Cedula99J P
)99P Q
;99Q R
if:: 
(:: 
empleadoviejo::  
!=::! #
null::# '
)::' (
{::( )
empleadoviejo<< !
.<<! "
Cedula<<" (
=<<) *
empleadonuevo<<+ 8
.<<8 9
Cedula<<9 ?
;<<? @
empleadoviejo== !
.==! "
Nombre==" (
===) *
empleadonuevo==+ 8
.==8 9
Nombre==9 ?
;==? @
empleadoviejo>> !
.>>! "
Edad>>" &
=>>' (
empleadonuevo>>) 6
.>>6 7
Edad>>7 ;
;>>; <
empleadoviejo?? !
.??! "
Sexo??" &
=??' (
empleadonuevo??) 6
.??6 7
Sexo??7 ;
;??; <
empleadoviejo@@ !
.@@! "
Telefono@@" *
=@@+ ,
empleadonuevo@@- :
.@@: ;
Telefono@@; C
;@@C D
empleadoviejoAA !
.AA! "
CorreoAA" (
=AA) *
empleadonuevoAA+ 8
.AA8 9
CorreoAA9 ?
;AA? @
empleadoviejoBB !
.BB! "
	DireccionBB" +
=BB, -
empleadonuevoBB. ;
.BB; <
	DireccionBB< E
;BBE F
empleadoviejoCC !
.CC! "
CargoCC" '
=CC( )
empleadonuevoCC* 7
.CC7 8
CargoCC8 =
;CC= >
empleadonuevoDD !
.DD! "
HorarioDD" )
=DD* +
empleadonuevoDD, 9
.DD9 :
HorarioDD: A
;DDA B
_contextFF 
.FF 
	EmpleadosFF &
.FF& '
UpdateFF' -
(FF- .
empleadoviejoFF. ;
)FF; <
;FF< =
_contextGG 
.GG 
SaveChangesGG (
(GG( )
)GG) *
;GG* +
returnHH 
newHH #
GuardarEmpleadoResponseHH 6
(HH8 9
empleadoviejoHH9 F
)HHF G
;HHG H
}II 
elseJJ 
{JJ 
returnKK 
newKK #
GuardarEmpleadoResponseKK 6
(KK8 9
$"KK9 ;
$strKK; u
"KKu v
)KKv w
;KKw x
}LL 
}MM 
catchNN 
(NN 
	ExceptionNN 
eNN 
)NN 
{NN 
returnOO 
newOO #
GuardarEmpleadoResponseOO 2
(OO4 5
$"OO5 7
$strOO7 O
{OOO P
eOOP Q
.OOQ R
MessageOOR Y
}OOY Z
"OOZ [
)OO[ \
;OO\ ]
}PP 
}QQ 	
}RR 
publicTT 

classTT #
GuardarEmpleadoResponseTT (
{UU 
publicVV #
GuardarEmpleadoResponseVV &
(VV& '
EmpleadoVV' /
empleadoVV0 8
)VV8 9
{WW 	
ErrorXX 
=XX 
falseXX 
;XX 
EmpleadoYY 
=YY 
empleadoYY 
;YY  
}ZZ 	
public[[ #
GuardarEmpleadoResponse[[ &
([[& '
string[[' -
mensaje[[. 5
)[[5 6
{\\ 	
Error]] 
=]] 
true]] 
;]] 
Mensaje^^ 
=^^ 
mensaje^^ 
;^^ 
}__ 	
public`` 
bool`` 
Error`` 
{`` 
get`` 
;``  
set``! $
;``$ %
}``& '
publicaa 
stringaa 
Mensajeaa 
{aa 
getaa  #
;aa# $
setaa% (
;aa( )
}aa* +
publicbb 
Empleadobb 
Empleadobb  
{bb! "
getbb# &
;bb& '
setbb( +
;bb+ ,
}bb- .
}cc 
}dd ÅA
LC:\Users\SEBASTIAN\Documents\GneisRelease-master\Logica\HabitacionService.cs
	namespace 	
Logica
 
{ 
public		 

class		 
HabitacionService		 "
{

 
private 
readonly 
ProyectoContext (
_context) 1
;1 2
public 
HabitacionService  
(  !
ProyectoContext! 0
context1 8
)8 9
{9 :
_context 
= 
context 
; 
} 	
public %
GuardarHabitacionResponse (
Guardar) 0
(0 1

Habitacion1 ;

habitacion< F
)F G
{G H
try 
{ 
var 
HabitacionBuscada %
=& '
_context( 0
.0 1
Habitaciones1 =
.= >
Find> B
(B C

habitacionC M
.M N
IdhabitacionN Z
)Z [
;[ \
if 
( 
HabitacionBuscada $
!=% '
null' +
)+ ,
{, -
return 
new %
GuardarHabitacionResponse 8
(9 :
$str: g
)g h
;h i
} 
_context 
. 
Habitaciones %
.% &
Add& )
() *

habitacion* 4
)4 5
;5 6
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new %
GuardarHabitacionResponse 4
(5 6

habitacion6 @
)@ A
;A B
} 
catch 
( 
	Exception 
e 
) 
{ 
return 
new %
GuardarHabitacionResponse 4
(5 6
$"6 8
$str8 P
{P Q
eQ R
.R S
MessageS Z
}Z [
"[ \
)\ ]
;] ^
} 
}   	
public"" 
List"" 
<"" 

Habitacion"" 
>"" 
ConsultarTodos""  .
("". /
)""/ 0
{""0 1
List## 
<## 

Habitacion## 
>## 
Habitaciones## )
=##* +
_context##, 4
.##4 5
Habitaciones##5 A
.##A B
ToList##B H
(##H I
)##I J
;##J K
return$$ 
Habitaciones$$ 
;$$  
}%% 	
public'' 

Habitacion'' 
BuscarPorID'' %
(''% &
string''& ,
idhabitacion''- 9
)''9 :
{'': ;

Habitacion(( 

habitacion(( !
=((" #
_context(($ ,
.((, -
Habitaciones((- 9
.((9 :
Find((: >
(((> ?
idhabitacion((? K
)((K L
;((L M
return)) 

habitacion)) 
;)) 
}** 	
public,, %
GuardarHabitacionResponse,, (
Eliminar,,) 1
(,,2 3
string,,3 9
idhabitacion,,: F
),,F G
{,,G H
try-- 
{-- 
var.. 
HabitacionBuscada.. %
=..& '
_context..( 0
...0 1
Habitaciones..1 =
...= >
Find..> B
(..B C
idhabitacion..C O
)..O P
;..P Q
if// 
(// 
HabitacionBuscada// $
!=//% '
null//' +
)//+ ,
{//, -
_context00 
.00 
Habitaciones00 )
.00) *
Remove00* 0
(000 1
HabitacionBuscada001 B
)00B C
;00C D
_context11 
.11 
SaveChanges11 (
(11( )
)11) *
;11* +
return22 
new22 %
GuardarHabitacionResponse22 8
(229 :
HabitacionBuscada22: K
)22K L
;22L M
}33 
else44 
{44 
return55 
new55 %
GuardarHabitacionResponse55 8
(559 :
$"55: <
$str55< v
"55v w
)55w x
;55x y
}66 
}77 
catch88 
(88 
	Exception88 
e88 
)88 
{88 
return99 
new99 %
GuardarHabitacionResponse99 4
(995 6
$"996 8
$str998 P
{99P Q
e99Q R
.99R S
Message99S Z
}99Z [
"99[ \
)99\ ]
;99] ^
}:: 
};; 	
public== %
GuardarHabitacionResponse== (
	Modificar==) 2
(==3 4

Habitacion==4 >
habitacionnueva==? N
)==N O
{==O P
try>> 
{>> 
var?? 
habitacionvieja?? #
=??$ %
_context??& .
.??. /
Habitaciones??/ ;
.??; <
Find??< @
(??@ A
habitacionnueva??A P
.??P Q
Idhabitacion??Q ]
)??] ^
;??^ _
if@@ 
(@@ 
habitacionvieja@@ "
!=@@# %
null@@% )
)@@) *
{@@* +
habitacionviejaAA #
.AA# $
IdhabitacionAA$ 0
=AA1 2
habitacionnuevaAA3 B
.AAB C
IdhabitacionAAC O
;AAO P
habitacionviejaBB #
.BB# $
TipoBB$ (
=BB) *
habitacionnuevaBB+ :
.BB: ;
TipoBB; ?
;BB? @
habitacionviejaCC #
.CC# $
CostoCC$ )
=CC* +
habitacionnuevaCC, ;
.CC; <
CostoCC< A
;CCA B
habitacionviejaDD #
.DD# $
EstadoDD$ *
=DD+ ,
habitacionnuevaDD- <
.DD< =
EstadoDD= C
;DDC D
habitacionviejaEE #
.EE# $
UsosEE$ (
=EE) *
habitacionnuevaEE+ :
.EE: ;
UsosEE; ?
;EE? @
_contextFF 
.FF 
HabitacionesFF )
.FF) *
UpdateFF* 0
(FF0 1
habitacionviejaFF1 @
)FF@ A
;FFA B
_contextGG 
.GG 
SaveChangesGG (
(GG( )
)GG) *
;GG* +
returnHH 
newHH %
GuardarHabitacionResponseHH 8
(HH9 :
habitacionviejaHH: I
)HHI J
;HHJ K
}II 
elseJJ 
{JJ 
returnKK 
newKK %
GuardarHabitacionResponseKK 8
(KK9 :
$"KK: <
$strKK< v
"KKv w
)KKw x
;KKx y
}LL 
}MM 
catchNN 
(NN 
	ExceptionNN 
eNN 
)NN 
{NN 
returnOO 
newOO %
GuardarHabitacionResponseOO 4
(OO5 6
$"OO6 8
$strOO8 P
{OOP Q
eOOQ R
.OOR S
MessageOOS Z
}OOZ [
"OO[ \
)OO\ ]
;OO^ _
}PP 
}QQ 	
}SS 
publicUU 

classUU %
GuardarHabitacionResponseUU *
{VV 
publicWW %
GuardarHabitacionResponseWW (
(WW( )

HabitacionWW) 3

habitacionWW4 >
)WW> ?
{XX 	
ErrorYY 
=YY 
falseYY 
;YY 

HabitacionZZ 
=ZZ 

habitacionZZ #
;ZZ# $
}[[ 	
public\\ %
GuardarHabitacionResponse\\ (
(\\( )
string\\) /
mensaje\\0 7
)\\7 8
{]] 	
Error^^ 
=^^ 
true^^ 
;^^ 
Mensaje__ 
=__ 
mensaje__ 
;__ 
}`` 	
publicaa 
boolaa 
Erroraa 
{aa 
getaa 
;aa  
setaa! $
;aa$ %
}aa& '
publicbb 
stringbb 
Mensajebb 
{bb 
getbb  #
;bb# $
setbb% (
;bb( )
}bb* +
publiccc 

Habitacioncc 

Habitacioncc $
{cc% &
getcc' *
;cc* +
setcc, /
;cc/ 0
}cc1 2
}dd 
}ee æ=
JC:\Users\SEBASTIAN\Documents\GneisRelease-master\Logica\ProductoService.cs
	namespace 	
Logica
 
{ 
public		 

class		 
ProductoService		  
{

 
private 
readonly 
ProyectoContext (
_context) 1
;1 2
public 
ProductoService 
( 
ProyectoContext .
context/ 6
)6 7
{7 8
_context 
= 
context 
; 
} 	
public #
GuardarProductoResponse &
Guardar' .
(. /
Producto/ 7
producto8 @
)@ A
{A B
try 
{ 
var 
ProductoBuscado #
=$ %
_context& .
.. /
	Productos/ 8
.8 9
Find9 =
(= >
producto> F
.F G

IdproductoG Q
)Q R
;R S
if 
( 
ProductoBuscado "
!=# %
null% )
)) *
{* +
return 
new #
GuardarProductoResponse 6
(7 8
$str8 e
)e f
;f g
} 
_context 
. 
	Productos "
." #
Add# &
(& '
producto' /
)/ 0
;0 1
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new #
GuardarProductoResponse 2
(3 4
producto4 <
)< =
;= >
} 
catch 
( 
	Exception 
e 
) 
{ 
return 
new #
GuardarProductoResponse 2
(3 4
$"4 6
$str6 N
{N O
eO P
.P Q
MessageQ X
}X Y
"Y Z
)Z [
;[ \
} 
}   	
public"" 
List"" 
<"" 
Producto"" 
>"" 
ConsultarTodos"" ,
("", -
)""- .
{"". /
List## 
<## 
Producto## 
>## 
	Productos## $
=##% &
_context##' /
.##/ 0
	Productos##0 9
.##9 :
ToList##: @
(##@ A
)##A B
;##B C
return$$ 
	Productos$$ 
;$$ 
}%% 	
public'' 
Producto'' 
BuscarPorID'' #
(''# $
string''$ *

idproducto''+ 5
)''5 6
{''6 7
Producto(( 
producto(( 
=(( 
_context((  (
.((( )
	Productos(() 2
.((2 3
Find((3 7
(((7 8

idproducto((8 B
)((B C
;((C D
return)) 
producto)) 
;)) 
}** 	
public,, 
string,, 
Eliminar,, 
(,,  
string,,  &

idproducto,,' 1
),,1 2
{,,2 3
try-- 
{-- 
var.. 
ProductoBuscado.. #
=..$ %
_context..& .
.... /
	Productos../ 8
...8 9
Find..9 =
(..= >

idproducto..> H
)..H I
;..I J
if// 
(// 
ProductoBuscado// "
!=//# %
null//% )
)//) *
{//* +
_context00 
.00 
	Productos00 &
.00& '
Remove00' -
(00- .
ProductoBuscado00. =
)00= >
;00> ?
_context11 
.11 
SaveChanges11 (
(11( )
)11) *
;11* +
return22 
(22 
$"22 
$str22 M
"22M N
)22N O
;22O P
}33 
else44 
{44 
return55 
(55 
$"55 
$str55 X
"55X Y
)55Y Z
;55Z [
}66 
}77 
catch88 
(88 
	Exception88 
e88 
)88 
{88 
return99 
$"99 
$str99 1
{991 2
e992 3
.993 4
Message994 ;
}99; <
"99< =
;99= >
}:: 
};; 	
public== #
GuardarProductoResponse== &
	Modificar==' 0
(==1 2
Producto==2 :
productonuevo==; H
)==H I
{==I J
try>> 
{>> 
var?? 
Productoviejo?? !
=??" #
_context??$ ,
.??, -
	Productos??- 6
.??6 7
Find??7 ;
(??; <
productonuevo??< I
.??I J

Idproducto??J T
)??T U
;??U V
if@@ 
(@@ 
Productoviejo@@  
!=@@! #
null@@# '
)@@' (
{@@( )
ProductoviejoAA !
.AA! "

IdproductoAA" ,
=AA- .
productonuevoAA/ <
.AA< =

IdproductoAA= G
;AAG H
ProductoviejoBB !
.BB! "
DescripcionBB" -
=BB. /
productonuevoBB0 =
.BB= >
DescripcionBB> I
;BBI J
ProductoviejoCC !
.CC! "
StockCC" '
=CC( )
productonuevoCC* 7
.CC7 8
StockCC8 =
;CC= >
ProductoviejoDD !
.DD! "

VrunitarioDD" ,
=DD- .
productonuevoDD/ <
.DD< =

VrunitarioDD= G
;DDG H
_contextEE 
.EE 
	ProductosEE &
.EE& '
UpdateEE' -
(EE- .
ProductoviejoEE. ;
)EE; <
;EE< =
_contextFF 
.FF 
SaveChangesFF (
(FF( )
)FF) *
;FF* +
returnGG 
newGG #
GuardarProductoResponseGG 6
(GG7 8
ProductoviejoGG8 E
)GGE F
;GGF G
}HH 
elseII 
{II 
returnJJ 
newJJ #
GuardarProductoResponseJJ 6
(JJ7 8
$"JJ8 :
$strJJ: t
"JJt u
)JJu v
;JJv w
}KK 
}LL 
catchMM 
(MM 
	ExceptionMM 
eMM 
)MM 
{MM 
returnNN 
newNN #
GuardarProductoResponseNN 2
(NN3 4
$"NN4 6
$strNN6 N
{NNN O
eNNO P
.NNP Q
MessageNNQ X
}NNX Y
"NNY Z
)NNZ [
;NN[ \
}OO 
}PP 	
}RR 
publicTT 

classTT #
GuardarProductoResponseTT (
{UU 
publicVV #
GuardarProductoResponseVV &
(VV& '
ProductoVV' /
productoVV0 8
)VV8 9
{WW 	
ErrorXX 
=XX 
falseXX 
;XX 
ProductoYY 
=YY 
productoYY 
;YY  
}ZZ 	
public[[ #
GuardarProductoResponse[[ &
([[& '
string[[' -
mensaje[[. 5
)[[5 6
{\\ 	
Error]] 
=]] 
true]] 
;]] 
Mensaje^^ 
=^^ 
mensaje^^ 
;^^ 
}__ 	
public`` 
bool`` 
Error`` 
{`` 
get`` 
;``  
set``! $
;``$ %
}``& '
publicaa 
stringaa 
Mensajeaa 
{aa 
getaa  #
;aa# $
setaa% (
;aa( )
}aa* +
publicbb 
Productobb 
Productobb  
{bb! "
getbb# &
;bb& '
setbb( +
;bb+ ,
}bb- .
}cc 
}dd Ó+
IC:\Users\SEBASTIAN\Documents\GneisRelease-master\Logica\ReservaService.cs
	namespace 	
Logica
 
{ 
public 

class 
ReservaService 
{		 
private

 
readonly

 
ProyectoContext

 (
_context

) 1
;

1 2
public 
ReservaService 
( 
ProyectoContext -
context. 5
)5 6
{6 7
_context 
= 
context 
; 
} 	
public "
GuardarReservaResponse %
Guardar& -
(- .
Reserva. 5
reserva6 =
)= >
{> ?
try 
{ 
var 
ReservaBuscada "
=# $
_context% -
.- .
Reservas. 6
.6 7
Find7 ;
(; <
reserva< C
.C D
	IdreservaD M
)M N
;N O
if 
( 
ReservaBuscada !
!=" $
null$ (
)( )
{) *
return 
new "
GuardarReservaResponse 5
(6 7
$str7 d
)d e
;e f
} 
_context 
. 
Reservas !
.! "
Add" %
(% &
reserva& -
)- .
;. /
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new "
GuardarReservaResponse 1
(2 3
reserva3 :
): ;
;; <
} 
catch 
( 
	Exception 
e 
) 
{ 
return 
new "
GuardarReservaResponse 1
(2 3
$"3 5
$str5 M
{M N
eN O
.O P
MessageP W
}W X
"X Y
)Y Z
;Z [
} 
} 	
public!! 
List!! 
<!! 
Reserva!! 
>!! 
ConsultarTodos!! +
(!!+ ,
)!!, -
{!!- .
List"" 
<"" 
Reserva"" 
>"" 
Reservas"" "
=""# $
_context""% -
.""- .
Reservas"". 6
.""6 7
ToList""7 =
(""= >
)""> ?
;""? @
return## 
Reservas## 
;## 
}$$ 	
public&& 
Reserva&& 
BuscarPorID&& "
(&&" #
string&&# )
	idreserva&&* 3
)&&3 4
{&&4 5
Reserva'' 
reserva'' 
='' 
_context'' &
.''& '
Reservas''' /
.''/ 0
Find''0 4
(''4 5
	idreserva''5 >
)''> ?
;''? @
return(( 
reserva(( 
;(( 
})) 	
public++ 
string++ 
Eliminar++ 
(++  
string++  &
	idreserva++' 0
)++0 1
{++1 2
try,, 
{,, 
var-- 
ReservaBuscada-- "
=--# $
_context--% -
.--- .
Reservas--. 6
.--6 7
Find--7 ;
(--; <
	idreserva--< E
)--E F
;--F G
if.. 
(.. 
ReservaBuscada.. !
!=.." $
null..$ (
)..( )
{..) *
_context// 
.// 
Reservas// %
.//% &
Remove//& ,
(//, -
ReservaBuscada//- ;
)//; <
;//< =
_context00 
.00 
SaveChanges00 (
(00( )
)00) *
;00* +
return11 
(11 
$"11 
$str11 M
"11M N
)11N O
;11O P
}22 
else33 
{33 
return44 
(44 
$"44 
$str44 X
"44X Y
)44Y Z
;44Z [
}55 
}66 
catch77 
(77 
	Exception77 
e77 
)77 
{77 
return88 
$"88 
$str88 1
{881 2
e882 3
.883 4
Message884 ;
}88; <
"88< =
;88= >
}99 
}:: 	
}<< 
public== 

class== "
GuardarReservaResponse== '
{>> 
public?? "
GuardarReservaResponse?? %
(??% &
Reserva??& -
reserva??. 5
)??5 6
{@@ 	
ErrorAA 
=AA 
falseAA 
;AA 
ReservaBB 
=BB 
reservaBB 
;BB 
}CC 	
publicDD "
GuardarReservaResponseDD %
(DD% &
stringDD& ,
mensajeDD- 4
)DD4 5
{EE 	
ErrorFF 
=FF 
trueFF 
;FF 
MensajeGG 
=GG 
mensajeGG 
;GG 
}HH 	
publicII 
boolII 
ErrorII 
{II 
getII 
;II  
setII! $
;II$ %
}II& '
publicJJ 
stringJJ 
MensajeJJ 
{JJ 
getJJ  #
;JJ# $
setJJ% (
;JJ( )
}JJ* +
publicKK 
ReservaKK 
ReservaKK 
{KK  
getKK! $
;KK$ %
setKK& )
;KK) *
}KK+ ,
}LL 
}MM ç<
FC:\Users\SEBASTIAN\Documents\GneisRelease-master\Logica\UserService.cs
	namespace 	
Logica
 
{ 
public		 

class		 
UserService		 
{

 
private 
readonly 
ProyectoContext (
_context) 1
;1 2
public 
UserService 
( 
ProyectoContext *
context+ 2
)2 3
{3 4
_context 
= 
context 
; 
} 	
public 
User 
Validate 
( 
string #
userName$ ,
,, -
string. 4
password5 =
)= >
{ 	
return 
_context 
. 
Users !
.! "
FirstOrDefault" 0
(0 1
t1 2
=>3 5
t6 7
.7 8
Username8 @
==A C
userNameD L
&&M O
tP Q
.Q R
PasswordR Z
==[ ]
password^ f
)f g
;g h
} 	
public "
GuardarUsuarioResponse %
Guardar& -
(- .
User. 2
usuario3 :
): ;
{; <
try 
{ 
var 
UsuarioBuscado "
=# $
_context% -
.- .
Users. 3
.3 4
Find4 8
(8 9
usuario9 @
.@ A
UsernameA I
)I J
;J K
if 
( 
UsuarioBuscado !
!=" $
null$ (
)( )
{) *
return 
new "
GuardarUsuarioResponse 5
(6 7
$str7 d
)d e
;e f
} 
_context 
. 
Users 
. 
Add "
(" #
usuario# *
)* +
;+ ,
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new "
GuardarUsuarioResponse 1
(2 3
usuario3 :
): ;
;; <
} 
catch   
(   
	Exception   
e   
)   
{   
return!! 
new!! "
GuardarUsuarioResponse!! 1
(!!2 3
$"!!3 5
$str!!5 M
{!!M N
e!!N O
.!!O P
Message!!P W
}!!W X
"!!X Y
)!!Y Z
;!!Z [
}"" 
}## 	
public%% 
List%% 
<%% 
User%% 
>%% 
ConsultarTodos%% (
(%%( )
)%%) *
{%%* +
List&& 
<&& 
User&& 
>&& 
Usuarios&& 
=&&  !
_context&&" *
.&&* +
Users&&+ 0
.&&0 1
ToList&&1 7
(&&7 8
)&&8 9
;&&9 :
return(( 
Usuarios(( 
;(( 
})) 	
public++ 
string++ 
Eliminar++ 
(++  
string++  &
iduser++' -
)++- .
{++. /
try,, 
{,, 
var-- 
UsuarioBuscado-- "
=--# $
_context--% -
.--- .
Users--. 3
.--3 4
Find--4 8
(--8 9
iduser--9 ?
)--? @
;--@ A
if.. 
(.. 
UsuarioBuscado.. !
!=.." $
null..$ (
)..( )
{..) *
_context// 
.// 
Users// "
.//" #
Remove//# )
(//) *
UsuarioBuscado//* 8
)//8 9
;//9 :
_context00 
.00 
SaveChanges00 (
(00( )
)00) *
;00* +
return11 
(11 
$"11 
$str11 M
"11M N
)11N O
;11O P
}22 
else33 
{33 
return44 
(44 
$"44 
$str44 X
"44X Y
)44Y Z
;44Z [
}55 
}66 
catch77 
(77 
	Exception77 
e77 
)77 
{77 
return88 
$"88 
$str88 1
{881 2
e882 3
.883 4
Message884 ;
}88; <
"88< =
;88= >
}99 
}:: 	
public<< "
GuardarUsuarioResponse<< %
	Modificar<<& /
(<<0 1
User<<1 5
usuarionuevo<<6 B
)<<B C
{<<C D
try== 
{== 
var>> 
Usuarioviejo>>  
=>>! "
_context>># +
.>>+ ,
Users>>, 1
.>>1 2
Find>>2 6
(>>6 7
usuarionuevo>>7 C
.>>C D
Username>>D L
)>>L M
;>>M N
if?? 
(?? 
Usuarioviejo?? 
!=??  "
null??" &
)??& '
{??' (
Usuarioviejo@@  
.@@  !
Username@@! )
=@@* +
usuarionuevo@@, 8
.@@8 9
Username@@9 A
;@@A B
UsuarioviejoAA  
.AA  !
RoleAA! %
=AA& '
usuarionuevoAA( 4
.AA4 5
RoleAA5 9
;AA9 :
UsuarioviejoBB  
.BB  !
PasswordBB! )
=BB* +
usuarionuevoBB, 8
.BB8 9
PasswordBB9 A
;BBA B
_contextCC 
.CC 
UsersCC "
.CC" #
UpdateCC# )
(CC) *
UsuarioviejoCC* 6
)CC6 7
;CC7 8
_contextDD 
.DD 
SaveChangesDD (
(DD( )
)DD) *
;DD* +
returnEE 
newEE "
GuardarUsuarioResponseEE 5
(EE5 6
UsuarioviejoEE6 B
)EEB C
;EEC D
}FF 
elseGG 
{GG 
returnHH 
newHH "
GuardarUsuarioResponseHH 5
(HH6 7
$"HH7 9
$strHH9 s
"HHs t
)HHt u
;HHu v
}II 
}JJ 
catchKK 
(KK 
	ExceptionKK 
eKK 
)KK 
{KK 
returnLL 
newLL "
GuardarUsuarioResponseLL 1
(LL2 3
$"LL3 5
$strLL5 M
{LLM N
eLLN O
.LLO P
MessageLLP W
}LLW X
"LLX Y
)LLY Z
;LLZ [
}MM 
}NN 	
}PP 
publicQQ 

classQQ "
GuardarUsuarioResponseQQ '
{RR 
publicSS "
GuardarUsuarioResponseSS %
(SS% &
UserSS& *
usuarioSS+ 2
)SS2 3
{TT 	
ErrorUU 
=UU 
falseUU 
;UU 
UsuarioVV 
=VV 
usuarioVV 
;VV 
}WW 	
publicXX "
GuardarUsuarioResponseXX %
(XX% &
stringXX& ,
mensajeXX- 4
)XX4 5
{YY 	
ErrorZZ 
=ZZ 
trueZZ 
;ZZ 
Mensaje[[ 
=[[ 
mensaje[[ 
;[[ 
}\\ 	
public]] 
bool]] 
Error]] 
{]] 
get]] 
;]]  
set]]! $
;]]$ %
}]]& '
public^^ 
string^^ 
Mensaje^^ 
{^^ 
get^^  #
;^^# $
set^^% (
;^^( )
}^^* +
public__ 
User__ 
Usuario__ 
{__ 
get__ !
;__! "
set__# &
;__& '
}__( )
}`` 
}aa 