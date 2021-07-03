©
KC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Config\AppSetting.cs
	namespace 	
gneis
 
. 
Config 
{ 
public 

class 

AppSetting 
{ 
public		 
string		 
Secret		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
} 
} ˚$
WC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Controllers\CheckinController.cs
	namespace 	
gneis
 
. 
Controllers 
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
CheckinController "
:# $
ControllerBase% 3
{ 
private 
readonly 
CheckinService '
_checkinservice( 7
;7 8
public 
CheckinController  
(  !
ProyectoContext! 0
context1 8
)8 9
{9 :
_checkinservice 
= 
new !
CheckinService" 0
(0 1
context1 8
)8 9
;9 :
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
CheckinViewModel ,
>, -
post. 2
(2 3
CheckinInputModel3 D
checkinInputE Q
)Q R
{R S
Checkin 
checkin 
= 
Mapearcheckin +
(+ ,
checkinInput, 8
)8 9
;9 :
var 
response 
= 
_checkinservice *
.* +
Guardar+ 2
(2 3
checkin3 :
): ;
;; <
if 
( 
response 
. 
Error 
) 
{  

ModelState 
. 
AddModelError (
(( )
$str) ;
,; <
response= E
.E F
MensajeF M
)M N
;N O
var 
problemDetails "
=# $
new% ($
ValidationProblemDetails) A
(A B

ModelStateB L
)L M
{   
Status!! 
=!! 
StatusCodes!! (
.!!( )
Status400BadRequest!!) <
,!!< =
}"" 
;"" 
return## 

BadRequest## !
(##! "
problemDetails##" 0
)##0 1
;##1 2
}$$ 
return%% 
Ok%% 
(%% 
response%% 
.%% 
Checkin%% &
)%%& '
;%%' (
}&& 	
[(( 	
HttpGet((	 
](( 
public)) 
IEnumerable)) 
<)) 
CheckinViewModel)) +
>))+ ,
gets))- 1
())1 2
)))2 3
{))3 4
var** 
checkin** 
=** 
_checkinservice** )
.**) *
ConsultarTodos*** 8
(**8 9
)**9 :
.**: ;
Select**; A
(**A B
p**B C
=>**C E
new**E H
CheckinViewModel**I Y
(**Y Z
p**Z [
)**[ \
)**\ ]
;**] ^
return++ 
checkin++ 
;++ 
},, 	
[// 	

HttpDelete//	 
(// 
$str// !
)//! "
]//" #
public00 
ActionResult00 
<00 
string00 "
>00" #
Delete00$ *
(00* +
string00+ 1
	idcheckin002 ;
)00; <
{11 	
string22 
mensaje22 
=22 
_checkinservice22 ,
.22, -
Eliminar22- 5
(225 6
	idcheckin226 ?
)22? @
;22@ A
return33 
Ok33 
(33 
mensaje33 
)33 
;33 
}44 	
private66	 
Checkin66 
Mapearcheckin66 &
(66& '
CheckinInputModel66' 8
checkinInput669 E
)66E F
{66F G
var77 
checkin77 
=77 
new77 
Checkin77 %
{88 
	Idcheckin99 
=99 
checkinInput99 (
.99( )
	Idcheckin99) 2
,992 3
Idhabitacion:: 
=:: 
checkinInput:: +
.::+ ,
Idhabitacion::, 8
,::8 9
	Idcliente;; 
=;; 
checkinInput;; (
.;;( )
	Idcliente;;) 2
,;;2 3
Numeroinvitados<< 
=<<  !
checkinInput<<" .
.<<. /
Numeroinvitados<</ >
,<<> ?
Fechaentrada== 
=== 
checkinInput== +
.==+ ,
Fechaentrada==, 8
,==8 9
}?? 
;?? 
return@@ 
checkin@@ 
;@@ 
}AA 	
}BB 
}CC ã(
XC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Controllers\CheckoutController.cs
	namespace 	
gneis
 
. 
Controllers 
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
CheckoutController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
CheckoutService (
_checkoutservice) 9
;9 :
public 
CheckoutController !
(! "
ProyectoContext" 1
context2 9
)9 :
{: ;
_checkoutservice 
= 
new "
CheckoutService# 2
(2 3
context3 :
): ;
;; <
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
CheckoutViewModel -
>- .
post/ 3
(3 4
CheckoutInputModel4 F
checkoutInputG T
)T U
{U V
Checkout 
checkout 
= 
Mapearcheckout  .
(. /
checkoutInput/ <
)< =
;= >
var 
response 
= 
_checkoutservice +
.+ ,
Guardar, 3
(3 4
checkout4 <
)< =
;= >
if 
( 
response 
. 
Error 
) 
{  

ModelState 
. 
AddModelError (
(( )
$str) <
,< =
response> F
.F G
MensajeG N
)N O
;O P
var 
problemDetails "
=# $
new% ($
ValidationProblemDetails) A
(A B

ModelStateB L
)L M
{   
Status!! 
=!! 
StatusCodes!! (
.!!( )
Status400BadRequest!!) <
,!!< =
}"" 
;"" 
return## 

BadRequest## !
(##! "
problemDetails##" 0
)##0 1
;##1 2
}$$ 
return%% 
Ok%% 
(%% 
response%% 
.%% 
Checkout%% '
)%%' (
;%%( )
}&& 	
[(( 	
HttpGet((	 
](( 
public)) 
IEnumerable)) 
<)) 
CheckoutViewModel)) ,
>)), -
gets)). 2
())2 3
)))3 4
{))4 5
var** 
checkout** 
=** 
_checkoutservice** +
.**+ ,
ConsultarTodos**, :
(**: ;
)**; <
.**< =
Select**= C
(**C D
p**D E
=>**E G
new**G J
CheckoutViewModel**K \
(**\ ]
p**] ^
)**^ _
)**_ `
;**` a
return++ 
checkout++ 
;++ 
},, 	
[// 	

HttpDelete//	 
(// 
$str// "
)//" #
]//# $
public00 
ActionResult00 
<00 
string00 "
>00" #
Delete00$ *
(00* +
string00+ 1

idcheckout002 <
)00< =
{11 	
string22 
mensaje22 
=22 
_checkoutservice22 -
.22- .
Eliminar22. 6
(226 7

idcheckout227 A
)22A B
;22B C
return33 
Ok33 
(33 
mensaje33 
)33 
;33 
}44 	
private66 
Checkout66 
Mapearcheckout66 '
(66' (
CheckoutInputModel66( :
checkoutInput66; H
)66H I
{66I J
var77 
checkout77 
=77 
new77 
Checkout77 &
{88 

Idcheckout99 
=99 
checkoutInput99 *
.99* +

Idcheckout99+ 5
,995 6
Idhabitacion:: 
=:: 
checkoutInput:: ,
.::, -
Idhabitacion::- 9
,::9 :
	Idcliente;; 
=;; 
checkoutInput;; )
.;;) *
	Idcliente;;* 3
,;;3 4
Numeroinvitados<< 
=<<  !
checkoutInput<<" /
.<</ 0
Numeroinvitados<<0 ?
,<<? @
Fechaentrada== 
=== 
checkoutInput== ,
.==, -
Fechaentrada==- 9
,==9 :
Fechasalida>> 
=>> 
checkoutInput>> +
.>>+ ,
Fechasalida>>, 7
,>>7 8
DiasHospedaje?? 
=?? 
checkoutInput??  -
.??- .
DiasHospedaje??. ;
,??; <
TotalHospedaje@@ 
=@@  
checkoutInput@@! .
.@@. /
TotalHospedaje@@/ =
}AA 
;AA 
returnBB 
checkoutBB 
;BB 
}CC 	
}EE 
}FF Ï:
WC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Controllers\ClienteController.cs
	namespace 	
gneis
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ClienteController "
:# $
ControllerBase% 3
{ 
private 
readonly 
ClienteService '
_clienteservice( 7
;7 8
public 
ClienteController  
(  !
ProyectoContext! 0
context1 8
)8 9
{9 :
_clienteservice 
= 
new !
ClienteService" 0
(0 1
context1 8
)8 9
;9 :
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
ClienteViewModel ,
>, -
post. 2
(2 3
ClienteInputModel3 D
clienteInputE Q
)Q R
{R S
Cliente 
cliente 
= 
MapearCliente +
(+ ,
clienteInput, 8
)8 9
;9 :
var 
response 
= 
_clienteservice *
.* +
Guardar+ 2
(2 3
cliente3 :
): ;
;; <
if 
( 
response 
. 
Error 
) 
{  

ModelState 
. 
AddModelError (
(( )
$str) :
,: ;
response< D
.D E
MensajeE L
)L M
;M N
var 
problemDetails "
=# $
new% ($
ValidationProblemDetails) A
(A B

ModelStateB L
)L M
{   
Status!! 
=!! 
StatusCodes!! (
.!!( )
Status400BadRequest!!) <
,!!< =
}"" 
;"" 
return## 

BadRequest## !
(##! "
problemDetails##" 0
)##0 1
;##1 2
}$$ 
return%% 
Ok%% 
(%% 
response%% 
.%% 
Cliente%% &
)%%& '
;%%' (
}&& 	
[(( 	
HttpGet((	 
](( 
public)) 
IEnumerable)) 
<)) 
ClienteViewModel)) +
>))+ ,
gets))- 1
())1 2
)))2 3
{))3 4
var** 
cliente** 
=** 
_clienteservice** )
.**) *
ConsultarTodos*** 8
(**8 9
)**9 :
.**: ;
Select**; A
(**A B
p**B C
=>**C E
new**E H
ClienteViewModel**I Y
(**Y Z
p**Z [
)**[ \
)**\ ]
;**] ^
return++ 
cliente++ 
;++ 
},, 	
[.. 	
HttpGet..	 
(.. 
$str.. 
).. 
].. 
public// 
ActionResult// 
<// 
ClienteViewModel// ,
>//, -
get//. 1
(//1 2
string//2 8
cedula//9 ?
)//? @
{//@ A
var00 
cliente00 
=00 
_clienteservice00 )
.00) *
BuscarPorID00* 5
(005 6
cedula006 <
)00< =
;00= >
if11 
(11 
cliente11 
==11 
null11 
)11 
return11 %
NotFound11& .
(11. /
)11/ 0
;110 1
var22 
clienteView22 
=22 
new22 !
ClienteViewModel22" 2
(222 3
cliente223 :
)22: ;
;22; <
return33 
clienteView33 
;33 
}44 	
[77 	

HttpDelete77	 
(77 
$str77 
)77 
]77  
public88 
ActionResult88 
<88 
string88 "
>88" #
Delete88$ *
(88* +
string88+ 1
cedula882 8
)888 9
{99 	
string:: 
mensaje:: 
=:: 
_clienteservice:: ,
.::, -
Eliminar::- 5
(::5 6
cedula::6 <
)::< =
;::= >
return;; 
Ok;; 
(;; 
mensaje;; 
);; 
;;; 
}<< 	
[>> 	
HttpPut>>	 
]>> 
public?? 
ActionResult?? 
<?? 
string?? "
>??" #
Update??$ *
(??* +
ClienteInputModel??+ <
clienteInput??= I
)??I J
{??J K
Cliente@@ 
cliente@@ 
=@@ 
MapearCliente@@ +
(@@+ ,
clienteInput@@, 8
)@@8 9
;@@9 :
varAA 
responseAA 
=AA 
_clienteserviceAA +
.AA+ ,
	ModificarAA, 5
(AA5 6
clienteAA6 =
)AA= >
;AA> ?
ifBB 
(BB 
responseBB 
.BB 
ErrorBB 
)BB 
{BB  

ModelStateCC 
.CC 
AddModelErrorCC (
(CC( )
$strCC) :
,CC: ;
responseCC< D
.CCD E
MensajeCCE L
)CCL M
;CCM N
varDD 
problemDetailsDD "
=DD# $
newDD% ($
ValidationProblemDetailsDD) A
(DDA B

ModelStateDDB L
)DDL M
{EE 
StatusFF 
=FF 
StatusCodesFF (
.FF( )
Status400BadRequestFF) <
,FF< =
}GG 
;GG 
returnHH 

BadRequestHH !
(HH! "
problemDetailsHH" 0
)HH0 1
;HH1 2
}II 
returnJJ 
OkJJ 
(JJ 
responseJJ 
.JJ 
ClienteJJ &
)JJ& '
;JJ' (
}KK 	
privateMM 
ClienteMM 
MapearClienteMM %
(MM% &
ClienteInputModelMM& 7
clienteInputMM8 D
)MMD E
{MME F
varNN 
ClienteNN 
=NN 
newNN 
ClienteNN %
{OO 
CedulaPP 
=PP 
clienteInputPP %
.PP% &
CedulaPP& ,
,PP, -
NombreQQ 
=QQ 
clienteInputQQ %
.QQ% &
NombreQQ& ,
,QQ, -
EdadRR 
=RR 
clienteInputRR #
.RR# $
EdadRR$ (
,RR( )
SexoSS 
=SS 
clienteInputSS #
.SS# $
SexoSS$ (
,SS( )
TelefonoTT 
=TT 
clienteInputTT '
.TT' (
TelefonoTT( 0
,TT0 1
CorreoUU 
=UU 
clienteInputUU %
.UU% &
CorreoUU& ,
,UU, -
	DireccionVV 
=VV 
clienteInputVV (
.VV( )
	DireccionVV) 2
,VV2 3

HospedajesWW 
=WW 
clienteInputWW )
.WW) *

HospedajesWW* 4
}ZZ 
;ZZ 
return[[ 
Cliente[[ 
;[[ 
}\\ 	
}^^ 
}__ Ô4
XC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Controllers\EmpleadoController.cs
	namespace 	
gneis
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
EmpleadoController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
EmpleadoService (
_empleadoservice) 9
;9 :
public 
EmpleadoController !
(! "
ProyectoContext" 1
context2 9
)9 :
{: ;
_empleadoservice 
= 
new "
EmpleadoService# 2
(2 3
context3 :
): ;
;; <
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
EmpleadoViewModel -
>- .
post/ 3
(3 4
EmpleadoInputModel4 F
empleadoInputG T
)T U
{U V
Empleado 
empleado 
= 
MapearEmpleado  .
(. /
empleadoInput/ <
)< =
;= >
var 
response 
= 
_empleadoservice +
.+ ,
Guardar, 3
(3 4
empleado4 <
)< =
;= >
if 
( 
response 
. 
Error 
) 
{  

ModelState 
. 
AddModelError (
(( )
$str) ;
,; <
response= E
.E F
MensajeF M
)M N
;N O
var 
problemDetails "
=# $
new% ($
ValidationProblemDetails) A
(A B

ModelStateB L
)L M
{ 
Status   
=   
StatusCodes   (
.  ( )
Status400BadRequest  ) <
,  < =
}!! 
;!! 
return"" 

BadRequest"" !
(""! "
problemDetails""" 0
)""0 1
;""1 2
}## 
return$$ 
Ok$$ 
($$ 
response$$ 
.$$ 
Empleado$$ '
)$$' (
;$$( )
}%% 	
['' 	
HttpGet''	 
]'' 
public(( 
IEnumerable(( 
<(( 
EmpleadoViewModel(( ,
>((, -
gets((. 2
(((2 3
)((3 4
{((4 5
var)) 
empleado)) 
=)) 
_empleadoservice)) +
.))+ ,
ConsultarTodos)), :
()): ;
))); <
.))< =
Select))= C
())C D
p))D E
=>))E G
new))G J
EmpleadoViewModel))K \
())\ ]
p))] ^
)))^ _
)))_ `
;))` a
return** 
empleado** 
;** 
}++ 	
[.. 	

HttpDelete..	 
(.. 
$str.. 
).. 
]..  
public// 
ActionResult// 
<// 
string// "
>//" #
Delete//$ *
(//* +
string//+ 1
cedula//2 8
)//8 9
{00 	
string11 
mensaje11 
=11 
_empleadoservice11 -
.11- .
Eliminar11. 6
(116 7
cedula117 =
)11= >
;11> ?
return22 
Ok22 
(22 
mensaje22 
)22 
;22 
}33 	
[55 	
HttpPut55	 
]55 
public66 
ActionResult66 
<66 
EmpleadoViewModel66 -
>66- .
Update66/ 5
(665 6
EmpleadoInputModel666 H
empleadoInput66I V
)66V W
{66W X
Empleado77 
empleado77 
=77 
MapearEmpleado77  .
(77. /
empleadoInput77/ <
)77< =
;77= >
var88 
response88 
=88 
_empleadoservice88 +
.88+ ,
	Modificar88, 5
(885 6
empleado886 >
)88> ?
;88? @
if99 
(99 
response99 
.99 
Error99 
)99 
{99  

ModelState:: 
.:: 
AddModelError:: (
(::( )
$str::) >
,::> ?
response::@ H
.::H I
Mensaje::I P
)::P Q
;::Q R
var;; 
problemDetails;; "
=;;# $
new;;% ($
ValidationProblemDetails;;) A
(;;A B

ModelState;;B L
);;L M
{<< 
Status== 
=== 
StatusCodes== (
.==( )
Status400BadRequest==) <
,==< =
}>> 
;>> 
return?? 

BadRequest?? !
(??! "
problemDetails??" 0
)??0 1
;??1 2
}@@ 
returnAA 
OkAA 
(AA 
responseAA 
.AA 
EmpleadoAA '
)AA' (
;AA( )
}BB 	
privateDD 
EmpleadoDD 
MapearEmpleadoDD '
(DD' (
EmpleadoInputModelDD( :
empleadoInputDD; H
)DDH I
{DDI J
varEE 
empleadoEE 
=EE 
newEE 
EmpleadoEE '
{FF 
CedulaGG 
=GG 
empleadoInputGG &
.GG& '
CedulaGG' -
,GG- .
NombreHH 
=HH 
empleadoInputHH &
.HH& '
NombreHH' -
,HH- .
EdadII 
=II 
empleadoInputII $
.II$ %
EdadII% )
,II) *
SexoJJ 
=JJ 
empleadoInputJJ $
.JJ$ %
SexoJJ% )
,JJ) *
TelefonoKK 
=KK 
empleadoInputKK (
.KK( )
TelefonoKK) 1
,KK1 2
CorreoLL 
=LL 
empleadoInputLL &
.LL& '
CorreoLL' -
,LL- .
	DireccionMM 
=MM 
empleadoInputMM )
.MM) *
	DireccionMM* 3
,MM3 4
CargoNN 
=NN 
empleadoInputNN %
.NN% &
CargoNN& +
,NN+ ,
HorarioOO 
=OO 
empleadoInputOO '
.OO' (
HorarioOO( /
}RR 
;RR 
returnSS 
empleadoSS 
;SS 
}TT 	
}UU 
}VV ˘?
ZC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Controllers\HabitacionController.cs
	namespace 	
gneis
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class  
HabitacionController %
:& '
ControllerBase( 6
{ 
private 
readonly 
HabitacionService *
_habitacionservice+ =
;= >
public  
HabitacionController #
(# $
ProyectoContext$ 3
context4 ;
); <
{< =
_habitacionservice 
=  
new! $
HabitacionService% 6
(6 7
context7 >
)> ?
;? @
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
HabitacionViewModel /
>/ 0
post1 5
(5 6 
HabitacionInputModel6 J
habitacionInputK Z
)Z [
{[ \

Habitacion 

habitacion !
=" #
MapearHabitacion$ 4
(4 5
habitacionInput5 D
)D E
;E F
var 
response 
= 
_habitacionservice -
.- .
Guardar. 5
(5 6

habitacion6 @
)@ A
;A B
if 
( 
response 
. 
Error 
) 
{  

ModelState 
. 
AddModelError (
(( )
$str) =
,= >
response? G
.G H
MensajeH O
)O P
;P Q
var   
problemDetails   "
=  # $
new  % ($
ValidationProblemDetails  ) A
(  A B

ModelState  B L
)  L M
{!! 
Status"" 
="" 
StatusCodes"" (
.""( )
Status400BadRequest"") <
,""< =
}## 
;## 
return$$ 

BadRequest$$ !
($$! "
problemDetails$$" 0
)$$0 1
;$$1 2
}%% 
return&& 
Ok&& 
(&& 
response&& 
.&& 

Habitacion&& )
)&&) *
;&&* +
}'' 	
[)) 	
HttpGet))	 
])) 
public** 
IEnumerable** 
<** 
HabitacionViewModel** .
>**. /
gets**0 4
(**4 5
)**5 6
{**6 7
var++ 

habitacion++ 
=++ 
_habitacionservice++ /
.++/ 0
ConsultarTodos++0 >
(++> ?
)++? @
.++@ A
Select++A G
(++G H
p++H I
=>++I K
new++K N
HabitacionViewModel++O b
(++b c
p++c d
)++d e
)++e f
;++f g
return,, 

habitacion,, 
;,, 
}-- 	
[00 	
HttpGet00	 
(00 
$str00 !
)00! "
]00" #
public11 
ActionResult11 
<11 
HabitacionViewModel11 /
>11/ 0
get111 4
(114 5
string115 ;
idhabitacion11< H
)11H I
{11I J
var22 

habitacion22 
=22 
_habitacionservice22 /
.22/ 0
BuscarPorID220 ;
(22; <
idhabitacion22< H
)22H I
;22I J
if33 
(33 

habitacion33 
==33 
null33 !
)33! "
return33" (
NotFound33) 1
(331 2
)332 3
;333 4
var44 
habitacionViewModel44 #
=44$ %
new44& )
HabitacionViewModel44* =
(44= >

habitacion44> H
)44H I
;44I J
return55 
habitacionViewModel55 &
;55& '
}66 	
[99 	

HttpDelete99	 
(99 
$str99 $
)99$ %
]99% &
public:: 
ActionResult:: 
<:: 
HabitacionViewModel:: /
>::/ 0
Delete::1 7
(::7 8
string::8 >
idhabitacion::? K
)::K L
{;; 	
var<< 
response<< 
=<< 
_habitacionservice<< -
.<<- .
Eliminar<<. 6
(<<6 7
idhabitacion<<7 C
)<<C D
;<<D E
if== 
(== 
response== 
.== 
Error== 
)== 
{==  

ModelState>> 
.>> 
AddModelError>> (
(>>( )
$str>>) >
,>>> ?
$str	>>@ ú
)
>>ú ù
;
>>ù û
var?? 
problemDetails?? "
=??# $
new??% ($
ValidationProblemDetails??) A
(??A B

ModelState??B L
)??L M
{@@ 
StatusAA 
=AA 
StatusCodesAA (
.AA( )
Status400BadRequestAA) <
,AA< =
}BB 
;BB 
returnCC 

BadRequestCC !
(CC! "
problemDetailsCC" 0
)CC0 1
;CC1 2
}DD 
returnEE 
OkEE 
(EE 
responseEE 
.EE 

HabitacionEE )
)EE) *
;EE* +
}FF 	
[HH 	
HttpPutHH	 
]HH 
publicII 
ActionResultII 
<II 
stringII "
>II" #
UpdateII$ *
(II* + 
HabitacionInputModelII+ ?
habitacionInputII@ O
)IIO P
{IIP Q

HabitacionJJ 

habitacionJJ !
=JJ" #
MapearHabitacionJJ$ 4
(JJ4 5
habitacionInputJJ5 D
)JJD E
;JJE F
varKK 
responseKK 
=KK 
_habitacionserviceKK -
.KK- .
	ModificarKK. 7
(KK7 8

habitacionKK8 B
)KKB C
;KKC D
ifLL 
(LL 
responseLL 
.LL 
ErrorLL 
)LL 
{LL  

ModelStateMM 
.MM 
AddModelErrorMM (
(MM( )
$strMM) @
,MM@ A
responseMMB J
.MMJ K
MensajeMMK R
)MMR S
;MMS T
varNN 
problemDetailsNN "
=NN# $
newNN% ($
ValidationProblemDetailsNN) A
(NNA B

ModelStateNNB L
)NNL M
{OO 
StatusPP 
=PP 
StatusCodesPP (
.PP( )
Status400BadRequestPP) <
,PP< =
}QQ 
;QQ 
returnRR 

BadRequestRR !
(RR! "
problemDetailsRR" 0
)RR0 1
;RR1 2
}SS 
returnTT 
OkTT 
(TT 
responseTT 
.TT 

HabitacionTT )
)TT) *
;TT* +
}UU 	
privateWW 

HabitacionWW 
MapearHabitacionWW +
(WW+ , 
HabitacionInputModelWW, @
habitacionInputWWA P
)WWP Q
{WWQ R
varXX 

HabitacionXX 
=XX 
newXX  

HabitacionXX! +
{YY 
IdhabitacionZZ 
=ZZ 
habitacionInputZZ .
.ZZ. /
IdhabitacionZZ/ ;
,ZZ; <
Tipo[[ 
=[[ 
habitacionInput[[ &
.[[& '
Tipo[[' +
,[[+ ,
Costo\\ 
=\\ 
habitacionInput\\ '
.\\' (
Costo\\( -
,\\- .
Estado]] 
=]] 
habitacionInput]] (
.]]( )
Estado]]) /
,]]/ 0
Usos^^ 
=^^ 
habitacionInput^^ &
.^^& '
Usos^^' +
}aa 
;aa 
returnbb 

Habitacionbb 
;bb 
}cc 	
}ee 
}ff û
UC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Controllers\LoginController.cs
	namespace 	
gneis
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
LoginController  
:  !
ControllerBase" 0
{ 
private 

JwtService 
_jwtService &
;& '
private 
UserService 
_userService (
;( )
ProyectoContext 
_context  
;  !
public 
LoginController 
( 
ProyectoContext .
context/ 6
,6 7
IOptions8 @
<@ A

AppSettingA K
>K L
appSettingsM X
)X Y
{ 	
_context 
= 
context 
; 
var 
admin 
= 
_context  
.  !
Users! &
.& '
Find' +
(+ ,
$str, 3
)3 4
;4 5
if 
( 
admin 
== 
null 
) 
{   
_context!! 
.!! 
Users!! 
.!! 
Add!! "
(!!" #
new!!# &
Entidad!!' .
.!!. /
User!!/ 3
(!!3 4
)!!4 5
{!!6 7
Username!!8 @
=!!A B
$str!!C J
,!!J K
Password!!L T
=!!U V
$str!!W ^
,!!^ _
Role!!` d
=!!e f
$str!!g v
}!!w x
)!!x y
;!!y z
var"" 
i"" 
="" 
_context""  
.""  !
SaveChanges""! ,
("", -
)""- .
;"". /
}## 
_jwtService$$ 
=$$ 
new$$ 

JwtService$$ (
($$( )
appSettings$$) 4
)$$4 5
;$$5 6
_userService%% 
=%% 
new%% 
UserService%% *
(%%* +
context%%+ 2
)%%2 3
;%%3 4
}&& 	
[(( 	
AllowAnonymous((	 
](( 
[)) 	
HttpPost))	 
()) 
))) 
])) 
public** 
IActionResult** 
Login** "
(**" #
LoginInputModel**# 2
model**3 8
)**8 9
{++ 	
var,, 
user,, 
=,, 
_userService,, #
.,,# $
Validate,,$ ,
(,,, -
model,,- 2
.,,2 3
Username,,3 ;
,,,; <
model,,= B
.,,B C
Password,,C K
),,K L
;,,L M
if.. 
(.. 
user.. 
==.. 
null.. 
).. 
{// 

ModelState00 
.00 
AddModelError00 (
(00( )
$str00) :
,00: ;
$str00< _
)00_ `
;00` a
var11 
problemDetails11 "
=11# $
new11% ($
ValidationProblemDetails11) A
(11A B

ModelState11B L
)11L M
{22 
Status33 
=33 
StatusCodes33 (
.33( )
Status400BadRequest33) <
,33< =
}44 
;44 
return55 

BadRequest55 !
(55! "
problemDetails55" 0
)550 1
;551 2
}66 
var77 
response77 
=77 
_jwtService77 &
.77& '
GenerateToken77' 4
(774 5
user775 9
)779 :
;77: ;
return99 
Ok99 
(99 
response99 
)99 
;99  
}:: 	
};; 
}<< ã8
XC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Controllers\ProductoController.cs
	namespace 	
gneis
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ProductoController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
ProductoService (
_productoservice) 9
;9 :
public 
ProductoController !
(! "
ProyectoContext" 1
context2 9
)9 :
{: ;
_productoservice 
= 
new "
ProductoService# 2
(2 3
context3 :
): ;
;; <
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
ProductoViewModel -
>- .
post/ 3
(3 4
ProductoInputModel4 F
productoInputG T
)T U
{U V
Producto 
producto 
= 
MapearProducto  .
(. /
productoInput/ <
)< =
;= >
var 
response 
= 
_productoservice +
.+ ,
Guardar, 3
(3 4
producto4 <
)< =
;= >
if 
( 
response 
. 
Error 
) 
{  

ModelState 
. 
AddModelError (
(( )
$str) ;
,; <
response= E
.E F
MensajeF M
)M N
;N O
var   
problemDetails   "
=  # $
new  % ($
ValidationProblemDetails  ) A
(  A B

ModelState  B L
)  L M
{!! 
Status"" 
="" 
StatusCodes"" (
.""( )
Status400BadRequest"") <
,""< =
}## 
;## 
return$$ 

BadRequest$$ !
($$! "
problemDetails$$" 0
)$$0 1
;$$1 2
}%% 
return&& 
Ok&& 
(&& 
response&& 
.&& 
Producto&& '
)&&' (
;&&( )
}'' 	
[)) 	
HttpGet))	 
])) 
public** 
IEnumerable** 
<** 
ProductoViewModel** ,
>**, -
gets**. 2
(**2 3
)**3 4
{**4 5
var++ 
producto++ 
=++ 
_productoservice++ +
.+++ ,
ConsultarTodos++, :
(++: ;
)++; <
.++< =
Select++= C
(++C D
p++D E
=>++E G
new++G J
ProductoViewModel++K \
(++\ ]
p++] ^
)++^ _
)++_ `
;++` a
return,, 
producto,, 
;,, 
}-- 	
[00 	
HttpGet00	 
(00 
$str00 
)00  
]00  !
public11 
ActionResult11 
<11 
ProductoViewModel11 -
>11- .
get11/ 2
(112 3
string113 9

idproducto11: D
)11D E
{11E F
var22 
producto22 
=22 
_productoservice22 +
.22+ ,
BuscarPorID22, 7
(227 8

idproducto228 B
)22B C
;22C D
if33 
(33 
producto33 
==33 
null33 
)33  
return33  &
NotFound33' /
(33/ 0
)330 1
;331 2
var44 
productoViewModel44 !
=44" #
new44$ '
ProductoViewModel44( 9
(449 :
producto44: B
)44B C
;44C D
return55 
productoViewModel55 $
;55$ %
}66 	
[99 	

HttpDelete99	 
(99 
$str99 "
)99" #
]99# $
public:: 
ActionResult:: 
<:: 
string:: "
>::" #
Delete::$ *
(::* +
string::+ 1

idproducto::2 <
)::< =
{;; 	
string<< 
mensaje<< 
=<< 
_productoservice<< -
.<<- .
Eliminar<<. 6
(<<6 7

idproducto<<7 A
)<<A B
;<<B C
return== 
Ok== 
(== 
mensaje== 
)== 
;== 
}>> 	
[@@ 	
HttpPut@@	 
]@@ 
publicAA 
ActionResultAA 
<AA 
stringAA "
>AA" #
UpdateAA$ *
(AA* +
ProductoInputModelAA+ =
productoInputAA> K
)AAK L
{AAL M
ProductoBB 
productoBB 
=BB 
MapearProductoBB  .
(BB. /
productoInputBB/ <
)BB< =
;BB= >
varCC 
responseCC 
=CC 
_productoserviceCC +
.CC+ ,
	ModificarCC, 5
(CC5 6
productoCC6 >
)CC> ?
;CC? @
ifDD 
(DD 
responseDD 
.DD 
ErrorDD 
)DD 
{DD  

ModelStateEE 
.EE 
AddModelErrorEE (
(EE( )
$strEE) >
,EE> ?
responseEE@ H
.EEH I
MensajeEEI P
)EEP Q
;EEQ R
varFF 
problemDetailsFF "
=FF# $
newFF% ($
ValidationProblemDetailsFF) A
(FFA B

ModelStateFFB L
)FFL M
{GG 
StatusHH 
=HH 
StatusCodesHH (
.HH( )
Status400BadRequestHH) <
,HH< =
}II 
;II 
returnJJ 

BadRequestJJ !
(JJ! "
problemDetailsJJ" 0
)JJ0 1
;JJ1 2
}KK 
returnLL 
OkLL 
(LL 
responseLL 
.LL 
ProductoLL '
)LL' (
;LL( )
}MM 	
privateQQ 
ProductoQQ 
MapearProductoQQ '
(QQ' (
ProductoInputModelQQ( :
productoInputQQ; H
)QQH I
{QQI J
varRR 
ProductoRR 
=RR 
newRR 
ProductoRR '
{SS 

IdproductoTT 
=TT 
productoInputTT *
.TT* +

IdproductoTT+ 5
,TT5 6
DescripcionUU 
=UU 
productoInputUU +
.UU+ ,
DescripcionUU, 7
,UU7 8
StockVV 
=VV 
productoInputVV %
.VV% &
StockVV& +
,VV+ ,

VrunitarioWW 
=WW 
productoInputWW *
.WW* +

VrunitarioWW+ 5
}YY 
;YY 
returnZZ 
ProductoZZ 
;ZZ 
}[[ 	
}]] 
}^^ É,
WC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Controllers\ReservaController.cs
	namespace 	
gneis
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ReservaController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IHubContext $
<$ %
	SignalHub% .
>. /
_hubContext0 ;
;; <
private 
readonly 
ReservaService '
_reservaservice( 7
;7 8
public 
ReservaController  
(  !
ProyectoContext! 0
context1 8
,8 9
IHubContext9 D
<D E
	SignalHubE N
>N O

hubContextP Z
)Z [
{[ \
_reservaservice 
= 
new !
ReservaService" 0
(0 1
context1 8
)8 9
;9 :
_hubContext 
= 

hubContext $
;$ %
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ReservaViewModel' 7
>7 8
>8 9
post: >
(> ?
ReservaInputModel? P
reservaInputQ ]
)] ^
{^ _
Reserva   
reserva   
=   
MapearReserva   +
(  + ,
reservaInput  , 8
)  8 9
;  9 :
var!! 
response!! 
=!! 
_reservaservice!! *
.!!* +
Guardar!!+ 2
(!!2 3
reserva!!3 :
)!!: ;
;!!; <
if"" 
("" 
response"" 
."" 
Error"" 
)"" 
{""  

ModelState## 
.## 
AddModelError## (
(##( )
$str##) :
,##: ;
response##< D
.##D E
Mensaje##E L
)##L M
;##M N
var$$ 
problemDetails$$ "
=$$# $
new$$% ($
ValidationProblemDetails$$) A
($$A B

ModelState$$B L
)$$L M
{%% 
Status&& 
=&& 
StatusCodes&& (
.&&( )
Status400BadRequest&&) <
,&&< =
}'' 
;'' 
return(( 

BadRequest(( !
(((! "
problemDetails((" 0
)((0 1
;((1 2
})) 
var** 
reservaViewModel**  
=**! "
new**# &
ReservaViewModel**' 7
(**7 8
response**8 @
.**@ A
Reserva**A H
)**H I
;**I J
await++ 
_hubContext++ 
.++ 
Clients++ %
.++% &
All++& )
.++) *
	SendAsync++* 3
(++3 4
$str++4 G
,++G H
reservaViewModel++I Y
)++Y Z
;++Z [
return,, 
Ok,, 
(,, 
reservaViewModel,, &
),,& '
;,,' (
}-- 	
[// 	
HttpGet//	 
]// 
public00 
IEnumerable00 
<00 
ReservaViewModel00 +
>00+ ,
gets00- 1
(001 2
)002 3
{003 4
var11 
reserva11 
=11 
_reservaservice11 )
.11) *
ConsultarTodos11* 8
(118 9
)119 :
.11: ;
Select11; A
(11A B
p11B C
=>11C E
new11E H
ReservaViewModel11I Y
(11Y Z
p11Z [
)11[ \
)11\ ]
;11] ^
return22 
reserva22 
;22 
}33 	
[66 	

HttpDelete66	 
(66 
$str66 !
)66! "
]66" #
public77 
ActionResult77 
<77 
string77 "
>77" #
Delete77$ *
(77* +
string77+ 1
	idreserva772 ;
)77; <
{88 	
string99 
mensaje99 
=99 
_reservaservice99 ,
.99, -
Eliminar99- 5
(995 6
	idreserva996 ?
)99? @
;99@ A
return:: 
Ok:: 
(:: 
mensaje:: 
):: 
;:: 
};; 	
private== 
Reserva== 
MapearReserva== %
(==% &
ReservaInputModel==& 7
reservaInput==8 D
)==D E
{==E F
var>> 
Reserva>> 
=>> 
new>> 
Reserva>> %
{?? 
	Idreserva@@ 
=@@ 
reservaInput@@ (
.@@( )
	Idreserva@@) 2
,@@2 3
IdhabitacionAA 
=AA 
reservaInputAA +
.AA+ ,
IdhabitacionAA, 8
,AA8 9
	IdclienteBB 
=BB 
reservaInputBB (
.BB( )
	IdclienteBB) 2
,BB2 3
NumeroinvitadosCC 
=CC  !
reservaInputCC" .
.CC. /
NumeroinvitadosCC/ >
,CC> ?
FechareservaDD 
=DD 
reservaInputDD +
.DD+ ,
FechareservaDD, 8
}GG 
;GG 
returnHH 
ReservaHH 
;HH 
}II 	
}KK 
}LL –/
WC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Controllers\UsuarioController.cs
	namespace 	
gneis
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
UsuarioController "
:# $
ControllerBase% 3
{ 
private 
readonly 
UserService $
_usuarioservice% 4
;4 5
public 
UsuarioController  
(  !
ProyectoContext! 0
context1 8
)8 9
{9 :
_usuarioservice 
= 
new !
UserService" -
(- .
context. 5
)5 6
;6 7
} 	
[ 	
AllowAnonymous	 
] 
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
UsuarioViewModel ,
>, -
post. 2
(2 3
UsuarioInputModel3 D
usuarioInputE Q
)Q R
{R S
User 
usuario 
= 
MapearUsuario (
(( )
usuarioInput) 5
)5 6
;6 7
var 
response 
= 
_usuarioservice *
.* +
Guardar+ 2
(2 3
usuario3 :
): ;
;; <
if 
( 
response 
. 
Error 
) 
{  

ModelState 
. 
AddModelError (
(( )
$str) :
,: ;
response< D
.D E
MensajeE L
)L M
;M N
var   
problemDetails   "
=  # $
new  % ($
ValidationProblemDetails  ) A
(  A B

ModelState  B L
)  L M
{!! 
Status"" 
="" 
StatusCodes"" (
.""( )
Status400BadRequest"") <
,""< =
}## 
;## 
return$$ 

BadRequest$$ !
($$! "
problemDetails$$" 0
)$$0 1
;$$1 2
}%% 
return&& 
Ok&& 
(&& 
response&& 
.&& 
Usuario&& &
)&&& '
;&&' (
}'' 	
[)) 	
HttpGet))	 
])) 
public** 
IEnumerable** 
<** 
UsuarioViewModel** +
>**+ ,
gets**- 1
(**1 2
)**2 3
{**3 4
var++ 
usuarios++ 
=++ 
_usuarioservice++ *
.++* +
ConsultarTodos+++ 9
(++9 :
)++: ;
.++; <
Select++< B
(++B C
p++C D
=>++D F
new++F I
UsuarioViewModel++J Z
(++Z [
p++[ \
)++\ ]
)++] ^
;++^ _
return,, 
usuarios,, 
;,, 
}-- 	
[00 	

HttpDelete00	 
(00 
$str00 
)00 
]00  
public11 
ActionResult11 
<11 
string11 "
>11" #
Delete11$ *
(11* +
string11+ 1
iduser112 8
)118 9
{22 	
string33 
mensaje33 
=33 
_usuarioservice33 ,
.33, -
Eliminar33- 5
(335 6
iduser336 <
)33< =
;33= >
return44 
Ok44 
(44 
mensaje44 
)44 
;44 
}55 	
[77 	
HttpPut77	 
]77 
public88 
ActionResult88 
<88 
UsuarioViewModel88 ,
>88, -
Update88. 4
(884 5
UsuarioInputModel885 F
usuarioInput88G S
)88S T
{88T U
User99 
usuario99 
=99 
MapearUsuario99 (
(99( )
usuarioInput99) 5
)995 6
;996 7
var:: 
response:: 
=:: 
_usuarioservice:: *
.::* +
	Modificar::+ 4
(::4 5
usuario::5 <
)::< =
;::= >
if;; 
(;; 
response;; 
.;; 
Error;; 
);; 
{;;  

ModelState<< 
.<< 
AddModelError<< (
(<<( )
$str<<) =
,<<= >
response<<? G
.<<G H
Mensaje<<H O
)<<O P
;<<P Q
var== 
problemDetails== "
===# $
new==% ($
ValidationProblemDetails==) A
(==A B

ModelState==B L
)==L M
{>> 
Status?? 
=?? 
StatusCodes?? (
.??( )
Status400BadRequest??) <
,??< =
}@@ 
;@@ 
returnAA 

BadRequestAA !
(AA! "
problemDetailsAA" 0
)AA0 1
;AA1 2
}BB 
returnCC 
OkCC 
(CC 
responseCC 
.CC 
UsuarioCC &
)CC& '
;CC' (
}DD 	
privateFF 
UserFF 
MapearUsuarioFF "
(FF" #
UsuarioInputModelFF# 4
usuarioInputFF5 A
)FFA B
{FFB C
varGG 
UsuarioGG 
=GG 
newGG 
UserGG "
{HH 
UsernameII 
=II 
usuarioInputII '
.II' (
UsernameII( 0
,II0 1
RoleJJ 
=JJ 
usuarioInputJJ #
.JJ# $
RoleJJ$ (
,JJ( )
PasswordKK 
=KK 
usuarioInputKK '
.KK' (
PasswordKK( 0
}MM 
;MM 
returnNN 
UsuarioNN 
;NN 
}OO 	
}QQ 
}RR Ú
_C:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Controllers\WeatherForecastController.cs
	namespace 	
Gneis
 
. 
Controllers 
{		 
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
static 
readonly 
string  &
[& '
]' (
	Summaries) 2
=3 4
new5 8
[8 9
]9 :
{ 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
var 
rng 
= 
new 
Random  
(  !
)! "
;" #
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date   
=   
DateTime   
.    
Now    #
.  # $
AddDays  $ +
(  + ,
index  , 1
)  1 2
,  2 3
TemperatureC!! 
=!! 
rng!! "
.!!" #
Next!!# '
(!!' (
-!!( )
$num!!) +
,!!+ ,
$num!!- /
)!!/ 0
,!!0 1
Summary"" 
="" 
	Summaries"" #
[""# $
rng""$ '
.""' (
Next""( ,
("", -
	Summaries""- 6
.""6 7
Length""7 =
)""= >
]""> ?
}## 
)## 
.$$ 
ToArray$$ 
($$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' ©
HC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Hubs\SignalHub.cs
	namespace 	
gneis
 
. 
Hubs 
{ 
public 

class 
	SignalHub 
: 
Hub  
{ 
} 
} Ü
MC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Models\CheckinModel.cs
	namespace 	
gneis
 
. 
Models 
{ 
public		 

class		 
CheckinInputModel		 "
{

 
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage !
=! "
$str" K
)K L
]L M
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
	Idcheckin 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage !
=! "
$str" K
)K L
]L M
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
Idhabitacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage "
=" #
$str# M
)M N
]N O
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
	Idcliente 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage 
=  
$str  [
)[ \
]\ ]
public 
int 
Numeroinvitados "
{# $
get$ '
;' (
set) ,
;, -
}- .
[ 	
Required	 
] 
public 
DateTime 
Fechaentrada $
{% &
get& )
;) *
set+ .
;. /
}/ 0
} 
public 

class 
CheckinViewModel !
:" #
CheckinInputModel$ 5
{ 
public   
CheckinViewModel   
(    
)    !
{!! 	
}## 	
public$$ 
CheckinViewModel$$ 
($$  
Checkin$$  '
checkin$$( /
)$$/ 0
{%% 	
	Idcheckin&& 
=&& 
checkin&& 
.&&  
	Idcheckin&&  )
;&&) *
Idhabitacion'' 
='' 
checkin'' "
.''" #
Idhabitacion''# /
;''/ 0
	Idcliente(( 
=(( 
checkin(( 
.((  
	Idcliente((  )
;(() *
Numeroinvitados)) 
=)) 
checkin)) %
.))% &
Numeroinvitados))& 5
;))5 6
Fechaentrada** 
=** 
checkin** "
.**" #
Fechaentrada**# /
;**/ 0
}++ 	
}-- 
}.. ˝#
NC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Models\CheckoutModel.cs
	namespace 	
gneis
 
. 
Models 
{		 
public

 

class

 
CheckoutInputModel

 #
{ 
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage !
=! "
$str" K
)K L
]L M
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 

Idcheckout  
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage !
=! "
$str" K
)K L
]L M
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
Idhabitacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage "
=" #
$str# M
)M N
]N O
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
	Idcliente 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage 
=  
$str  [
)[ \
]\ ]
public 
int 
Numeroinvitados "
{# $
get$ '
;' (
set) ,
;, -
}- .
[ 	
Required	 
] 
public 
DateTime 
Fechaentrada $
{% &
get& )
;) *
set+ .
;. /
}/ 0
[ 	
Required	 
] 
public 
DateTime 
Fechasalida #
{$ %
get% (
;( )
set* -
;- .
}. /
[ 	
Required	 
] 
public   
int   
DiasHospedaje    
{  ! "
get  " %
;  % &
set  ' *
;  * +
}  + ,
[!! 	
Required!!	 
]!! 
public"" 
decimal"" 
TotalHospedaje"" %
{""& '
get""' *
;""* +
set"", /
;""/ 0
}""0 1
}## 
public%% 

class%% 
CheckoutViewModel%% "
:%%# $
CheckoutInputModel%%% 7
{&& 
public'' 
CheckoutViewModel''  
(''  !
)''! "
{(( 	
}** 	
public++ 
CheckoutViewModel++  
(++  !
Checkout++! )
checkout++* 2
)++2 3
{,, 	

Idcheckout-- 
=-- 
checkout-- !
.--! "

Idcheckout--" ,
;--, -
Idhabitacion.. 
=.. 
checkout.. #
...# $
Idhabitacion..$ 0
;..0 1
	Idcliente// 
=// 
checkout//  
.//  !
	Idcliente//! *
;//* +
Numeroinvitados00 
=00 
checkout00 &
.00& '
Numeroinvitados00' 6
;006 7
Fechaentrada11 
=11 
checkout11 #
.11# $
Fechaentrada11$ 0
;110 1
Fechasalida22 
=22 
checkout22 "
.22" #
Fechasalida22# .
;22. /
DiasHospedaje33 
=33 
checkout33 $
.33$ %
DiasHospedaje33% 2
;332 3
TotalHospedaje44 
=44 
checkout44 %
.44% &
TotalHospedaje44& 4
;444 5
}55 	
}77 
}88 ‡%
MC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Models\ClienteModel.cs
	namespace 	
gneis
 
. 
Models 
{ 
public		 

class		 
ClienteInputModel		 "
{

 
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage "
=" #
$str# M
)M N
]N O
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
Cedula 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage "
=" #
$str# M
)M N
]N O
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& S
)S T
]T U
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage !
=! "
$str" R
)R S
]S T
public 
int 
Edad 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Required	 
] 
public 
string 
Sexo 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
[ 	
RegularExpression	 
( 
$str P
,P Q
ErrorMessageR ^
=_ `
$str	a É
)
É Ñ
]
Ñ Ö
public 
decimal 
Telefono 
{  !
get! $
;$ %
set& )
;) *
}* +
[ 	
Required	 
] 
[ 	
RegularExpression	 
( 
$str k
,l m
ErrorMessagen z
={ |
$str	} ù
)
û ü
]
ü †
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage "
=" #
$str# M
)M N
]N O
[   	
StringLength  	 
(   
$num   
,   
ErrorMessage   %
=  % &
$str  & G
)  G H
]  H I
public!! 
string!! 
	Direccion!! 
{!!  !
get!!" %
;!!% &
set!!' *
;!!* +
}!!, -
["" 	
Required""	 
]"" 
public## 
int## 

Hospedajes## 
{## 
get##  #
;### $
set##% (
;##( )
}##* +
}$$ 
public&& 

class&& 
ClienteViewModel&& !
:&&" #
ClienteInputModel&&$ 5
{'' 
public(( 
ClienteViewModel(( 
(((  
)((  !
{)) 	
}++ 	
public,, 
ClienteViewModel,, 
(,,  
Cliente,,  '
cliente,,( /
),,/ 0
{-- 	
Cedula.. 
=.. 
cliente.. 
... 
Cedula.. #
;..# $
Nombre// 
=// 
cliente// 
.// 
Nombre// #
;//# $
Edad00 
=00 
cliente00 
.00 
Edad00 
;00  
Sexo11 
=11 
cliente11 
.11 
Sexo11 
;11  
Telefono22 
=22 
cliente22 
.22 
Telefono22 '
;22' (
Correo33 
=33 
cliente33 
.33 
Correo33 #
;33# $
	Direccion44 
=44 
cliente44 
.44  
	Direccion44  )
;44) *

Hospedajes55 
=55 
cliente55  
.55  !

Hospedajes55! +
;55+ ,
}88 	
}:: 
};; Å+
NC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Models\EmpleadoModel.cs
	namespace 	
gneis
 
. 
Models 
{ 
public		 

class		 
EmpleadoInputModel		 #
{

 
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage "
=" #
$str# M
)M N
]N O
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
Cedula 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage "
=" #
$str# M
)M N
]N O
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& S
)S T
]T U
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage !
=! "
$str" R
)R S
]S T
public 
int 
Edad 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Required	 
] 
public 
string 
Sexo 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
[ 	
RegularExpression	 
( 
$str P
,P Q
ErrorMessageR ^
=_ `
$str	a É
)
É Ñ
]
Ñ Ö
public 
decimal 
Telefono 
{  !
get! $
;$ %
set& )
;) *
}* +
[ 	
Required	 
] 
[ 	
RegularExpression	 
( 
$str k
,l m
ErrorMessagen z
={ |
$str	} ù
)
û ü
]
ü †
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage "
=" #
$str# M
)M N
]N O
[   	
StringLength  	 
(   
$num   
,   
ErrorMessage   %
=  % &
$str  & G
)  G H
]  H I
public!! 
string!! 
	Direccion!! 
{!!  !
get!!" %
;!!% &
set!!' *
;!!* +
}!!, -
["" 	
Required""	 
]"" 
public## 
string## 
Cargo## 
{## 
get## !
;##! "
set### &
;##& '
}##( )
[$$ 	
Required$$	 
]$$ 
[%% 	
	MinLength%%	 
(%% 
$num%% 
,%% 
ErrorMessage%% "
=%%" #
$str%%# M
)%%M N
]%%N O
[&& 	
StringLength&&	 
(&& 
$num&& 
,&& 
ErrorMessage&& %
=&&% &
$str&&& G
)&&G H
]&&H I
public'' 
string'' 
Horario'' 
{'' 
get''  #
;''# $
set''% (
;''( )
}''* +
})) 
public** 

class** 
EmpleadoViewModel** "
:**# $
EmpleadoInputModel**% 7
{++ 
public,, 
EmpleadoViewModel,,  
(,,  !
),,! "
{-- 	
}// 	
public00 
EmpleadoViewModel00  
(00  !
Empleado00! )
empleado00* 2
)002 3
{11 	
Cedula22 
=22 
empleado22 
.22 
Cedula22 $
;22$ %
Nombre33 
=33 
empleado33 
.33 
Nombre33 $
;33$ %
Edad44 
=44 
empleado44 
.44 
Edad44  
;44  !
Sexo55 
=55 
empleado55 
.55 
Sexo55  
;55  !
Telefono66 
=66 
empleado66 
.66  
Telefono66  (
;66( )
Correo77 
=77 
empleado77 
.77 
Correo77 $
;77$ %
	Direccion88 
=88 
empleado88  
.88  !
	Direccion88! *
;88* +
Cargo99 
=99 
empleado99 
.99 
Cargo99 "
;99" #
Horario:: 
=:: 
empleado:: 
.:: 
Horario:: &
;::& '
}== 	
}?? 
}@@ Ú
PC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Models\HabitacionModel.cs
	namespace 	
gneis
 
. 
Models 
{ 
public		 

class		  
HabitacionInputModel		 %
{

 
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage !
=! "
$str" K
)K L
]L M
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
Idhabitacion "
{# $
get$ '
;' (
set) ,
;, -
}- .
[ 	
Required	 
] 
public 
string 
Tipo 
{ 
get 
;  
set! $
;$ %
}% &
[ 	
Required	 
] 
[ 	
Range	 
( 
typeof 
( 
Decimal 
) 
, 
$str  %
,% &
$str' 1
,1 2
ErrorMessage3 ?
=@ A
$strB t
)t u
]u v
public 
decimal 
Costo 
{ 
get !
;! "
set# &
;& '
}' (
[ 	
Required	 
] 
public 
string 
Estado 
{ 
get !
;! "
set# &
;& '
}' (
[ 	
Required	 
] 
public 
int 
Usos 
{ 
get 
; 
set !
;! "
}" #
} 
public 

class 
HabitacionViewModel $
:% & 
HabitacionInputModel' ;
{ 
public 
HabitacionViewModel "
(" #
)# $
{ 	
} 	
public   
HabitacionViewModel   "
(  " #

Habitacion  # -

habitacion  . 8
)  8 9
{!! 	
Idhabitacion"" 
="" 

habitacion"" %
.""% &
Idhabitacion""& 2
;""2 3
Tipo## 
=## 

habitacion## 
.## 
Tipo## "
;##" #
Costo$$ 
=$$ 

habitacion$$ 
.$$ 
Costo$$ $
;$$$ %
Estado%% 
=%% 

habitacion%% 
.%%  
Estado%%  &
;%%& '
Usos&& 
=&& 

habitacion&& 
.&& 
Usos&& "
;&&" #
}(( 	
}** 
}++ ä
FC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Models\Login.cs
	namespace		 	
gneis		
 
.		 
Models		 
{

 
public 

class 
LoginInputModel  
{ 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
Username 
{  
get  #
;# $
set% (
;( )
}) *
[ 	
Required	 
] 
public 
string 
Password 
{  
get  #
;# $
set% (
;( )
}) *
} 
public 

class 
LoginViewModel 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
public	 
string 
Token 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ì
NC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Models\ProductoModel.cs
	namespace 	
gneis
 
. 
Models 
{ 
public		 

class		 
ProductoInputModel		 #
{

 
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage !
=! "
$str" K
)K L
]L M
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 

Idproducto  
{! "
get" %
;% &
set' *
;* +
}+ ,
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage !
=! "
$str" K
)K L
]L M
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& S
)S T
]T U
public 
string 
Descripcion !
{" #
get# &
;& '
set( +
;+ ,
}, -
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage #
=# $
$str$ h
)h i
]i j
public 
int 
Stock 
{ 
get 
; 
set "
;" #
}# $
[ 	
Required	 
] 
[ 	
Range	 
( 
typeof 
( 
Decimal 
) 
, 
$str  %
,% &
$str' /
,/ 0
ErrorMessage1 =
=> ?
$str@ p
)p q
]q r
public 
decimal 

Vrunitario !
{" #
get# &
;& '
set( +
;+ ,
}, -
} 
public 

class 
ProductoViewModel "
:# $
ProductoInputModel% 7
{ 
public 
ProductoViewModel  
(  !
)! "
{ 	
}   	
public!! 
ProductoViewModel!!  
(!!  !
Producto!!! )
producto!!* 2
)!!2 3
{"" 	

Idproducto## 
=## 
producto## !
.##! "

Idproducto##" ,
;##, -
Descripcion$$ 
=$$ 
producto$$ "
.$$" #
Descripcion$$# .
;$$. /
Stock%% 
=%% 
producto%% 
.%% 
Stock%% "
;%%" #

Vrunitario&& 
=&& 
producto&& !
.&&! "

Vrunitario&&" ,
;&&, -
}(( 	
}** 
}++ Ü
MC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Models\ReservaModel.cs
	namespace 	
gneis
 
. 
Models 
{ 
public		 

class		 
ReservaInputModel		 "
{

 
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage !
=! "
$str" K
)K L
]L M
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
	Idreserva 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage !
=! "
$str" K
)K L
]L M
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
Idhabitacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage "
=" #
$str# M
)M N
]N O
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
	Idcliente 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage 
=  
$str  [
)[ \
]\ ]
public 
int 
Numeroinvitados "
{# $
get$ '
;' (
set) ,
;, -
}- .
[ 	
Required	 
] 
public 
DateTime 
Fechareserva $
{% &
get& )
;) *
set+ .
;. /
}/ 0
} 
public 

class 
ReservaViewModel !
:" #
ReservaInputModel$ 5
{ 
public   
ReservaViewModel   
(    
)    !
{!! 	
}## 	
public$$ 
ReservaViewModel$$ 
($$  
Reserva$$  '
reserva$$( /
)$$/ 0
{%% 	
	Idreserva&& 
=&& 
reserva&& 
.&&  
	Idreserva&&  )
;&&) *
Idhabitacion'' 
='' 
reserva'' "
.''" #
Idhabitacion''# /
;''/ 0
	Idcliente(( 
=(( 
reserva(( 
.((  
	Idcliente((  )
;(() *
Numeroinvitados)) 
=)) 
reserva)) %
.))% &
Numeroinvitados))& 5
;))5 6
Fechareserva** 
=** 
reserva** "
.**" #
Fechareserva**# /
;**/ 0
},, 	
}.. 
}// »
MC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Models\UsuarioModel.cs
	namespace 	
gneis
 
. 
Models 
{		 
public

 

class

 
UsuarioInputModel

 "
{ 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=% &
$str& G
)G H
]H I
public 
string 
Username 
{  
get  #
;# $
set% (
;( )
}) *
[ 	
Required	 
] 
[ 	
RegularExpression	 
( 
$str F
,F G
ErrorMessageH T
=U V
$str	V –
)
– —
]
— “
public 
string 
Password 
{  
get  #
;# $
set% (
;( )
}) *
[ 	
Required	 
] 
public 
string 
Role 
{ 
get 
;  
set! $
;$ %
}% &
} 
public 

class 
UsuarioViewModel !
:" #
UsuarioInputModel$ 5
{ 
public 
UsuarioViewModel 
(  
)  !
{ 	
} 	
public 
UsuarioViewModel 
(  
User  $
usuario% ,
), -
{ 	
Username   
=   
usuario   
.   
Username   '
;  ' (
Role!! 
=!! 
usuario!! 
.!! 
Role!! 
;!!  
Password"" 
="" 
usuario"" 
."" 
Password"" '
;""' (
}$$ 	
}&& 
}'' é
LC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Pages\Error.cshtml.cs
	namespace

 	
Gneis


 
.

 
Pages

 
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{ 
private 
readonly 
ILogger  
<  !

ErrorModel! +
>+ ,
_logger- 4
;4 5
public 

ErrorModel 
( 
ILogger !
<! "

ErrorModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} î

AC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Program.cs
	namespace

 	
Gneis


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} Ô
LC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Service\JwtService.cs
	namespace 	
gneis
 
. 
Service 
{ 
public 

class 

JwtService 
{ 
private	 
readonly 

AppSetting $
_appSettings% 1
;1 2
public 

JwtService 
( 
IOptions "
<" #

AppSetting# -
>- .
appSettings/ :
): ;
{ 	
_appSettings 
= 
appSettings &
.& '
Value' ,
;, -
} 	
public 
LoginViewModel 
GenerateToken +
(+ ,
User, 0
user1 5
)5 6
{ 	
if 
( 
user 
== 
null 
) 
return #
null$ (
;( )
var 
userResponse 
= 
new "
LoginViewModel# 1
(1 2
)2 3
{4 5
Role5 9
=: ;
user< @
.@ A
RoleA E
,E F
UsernameG O
=P Q
userR V
.V W
UsernameW _
}` a
;a b
var 
tokenHandler 
= 
new "#
JwtSecurityTokenHandler# :
(: ;
); <
;< =
var 
key 
= 
Encoding 
. 
ASCII $
.$ %
GetBytes% -
(- .
_appSettings. :
.: ;
Secret; A
)A B
;B C
var 
tokenDescriptor 
=  !
new" %#
SecurityTokenDescriptor& =
{ 
Subject   
=   
new   
ClaimsIdentity   ,
(  , -
new  - 0
Claim  1 6
[  6 7
]  7 8
{!! 
new"" 
Claim"" 
("" 

ClaimTypes"" (
.""( )
Name"") -
,""- .
user""/ 3
.""3 4
Username""4 <
.""< =
ToString""= E
(""E F
)""F G
)""G H
,""H I
new## 
Claim## 
(## 

ClaimTypes## (
.##( )
Role##) -
,##- .
user##/ 3
.##3 4
Role##4 8
.##8 9
ToString##9 A
(##A B
)##B C
)##C D
,##D E
}$$ 
)$$ 
,$$ 
Expires%% 
=%% 
DateTime%% "
.%%" #
UtcNow%%# )
.%%) *
AddDays%%* 1
(%%1 2
$num%%2 3
)%%3 4
,%%4 5
SigningCredentials&& "
=&&# $
new&&% (
SigningCredentials&&) ;
(&&; <
new&&< ? 
SymmetricSecurityKey&&@ T
(&&T U
key&&U X
)&&X Y
,&&Y Z
SecurityAlgorithms&&[ m
.&&m n 
HmacSha256Signature	&&n Å
)
&&Å Ç
}'' 
;'' 
var(( 
token(( 
=(( 
tokenHandler(( $
.(($ %
CreateToken((% 0
(((0 1
tokenDescriptor((1 @
)((@ A
;((A B
userResponse)) 
.)) 
Token)) 
=))  
tokenHandler))! -
.))- .

WriteToken)). 8
())8 9
token))9 >
)))> ?
;))? @
return++ 
userResponse++ 
;++  
},, 	
}-- 
}.. ⁄=
AC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\Startup.cs
	namespace 	
Gneis
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
var!! 
connectionString!!  
=!!  !
Configuration!!! .
.!!. /
GetConnectionString!!/ B
(!!B C
$str!!C V
)!!V W
;!!W X
services"" 
."" 
AddDbContext"" !
<""! "
ProyectoContext""" 1
>""1 2
(""2 3
p""3 4
=>""4 6
p""6 7
.""7 8
UseSqlServer""8 D
(""D E
connectionString""E U
)""U V
)""V W
;""W X
services%% 
.%% 

AddSignalR%% 
(%%  
)%%  !
;%%! "
services'' 
.'' #
AddControllersWithViews'' ,
('', -
)''- .
;''. /
var** 
appSettingsSection** "
=**# $
Configuration**% 2
.**2 3

GetSection**3 =
(**= >
$str**> J
)**J K
;**K L
services++ 
.++ 
	Configure++ 
<++ 

AppSetting++ )
>++) *
(++* +
appSettingsSection+++ =
)++= >
;++> ?
var// 
appSettings// 
=// 
appSettingsSection// 0
.//0 1
Get//1 4
<//4 5

AppSetting//5 ?
>//? @
(//@ A
)//A B
;//B C
var00 
key00 
=00 
Encoding00 
.00 
ASCII00 $
.00$ %
GetBytes00% -
(00- .
appSettings00. 9
.009 :
Secret00: @
)00@ A
;00A B
services11 
.11 
AddAuthentication11 &
(11& '
x11' (
=>11) +
{22 
x33 
.33 %
DefaultAuthenticateScheme33 +
=33, -
JwtBearerDefaults33. ?
.33? @ 
AuthenticationScheme33@ T
;33T U
x44 
.44 "
DefaultChallengeScheme44 (
=44) *
JwtBearerDefaults44+ <
.44< = 
AuthenticationScheme44= Q
;44Q R
}55 
)55 
.66 
AddJwtBearer66 
(66 
x66 
=>66 
{77 
x88 
.88  
RequireHttpsMetadata88 &
=88' (
false88) .
;88. /
x99 
.99 
	SaveToken99 
=99 
true99 "
;99" #
x:: 
.:: %
TokenValidationParameters:: +
=::, -
new::. 1%
TokenValidationParameters::2 K
{;; $
ValidateIssuerSigningKey<< ,
=<<- .
true<</ 3
,<<3 4
IssuerSigningKey== $
===% &
new==' * 
SymmetricSecurityKey==+ ?
(==? @
key==@ C
)==C D
,==D E
ValidateIssuer>> "
=>># $
false>>% *
,>>* +
ValidateAudience?? $
=??% &
false??' ,
}@@ 
;@@ 
}AA 
)AA 
;AA 
servicesDD 
.DD 
AddSwaggerGenDD "
(DD" #
)DD# $
;DD$ %
servicesFF 
.FF 
AddSpaStaticFilesFF &
(FF& '
configurationFF' 4
=>FF5 7
{GG 
configurationHH 
.HH 
RootPathHH &
=HH' (
$strHH) 9
;HH9 :
}II 
)II 
;II 
}JJ 	
publicMM 
voidMM 
	ConfigureMM 
(MM 
IApplicationBuilderMM 1
appMM2 5
,MM5 6
IWebHostEnvironmentMM7 J
envMMK N
)MMN O
{NN 	
ifOO 
(OO 
envOO 
.OO 
IsDevelopmentOO !
(OO! "
)OO" #
)OO# $
{PP 
appQQ 
.QQ %
UseDeveloperExceptionPageQQ -
(QQ- .
)QQ. /
;QQ/ 0
}RR 
elseSS 
{TT 
appUU 
.UU 
UseExceptionHandlerUU '
(UU' (
$strUU( 0
)UU0 1
;UU1 2
appWW 
.WW 
UseHstsWW 
(WW 
)WW 
;WW 
}XX 
appZZ 
.ZZ 
UseHttpsRedirectionZZ #
(ZZ# $
)ZZ$ %
;ZZ% &
app[[ 
.[[ 
UseStaticFiles[[ 
([[ 
)[[  
;[[  !
if\\ 
(\\ 
!\\ 
env\\ 
.\\ 
IsDevelopment\\ "
(\\" #
)\\# $
)\\$ %
{]] 
app^^ 
.^^ 
UseSpaStaticFiles^^ %
(^^% &
)^^& '
;^^' (
}__ 
appbb 
.bb 

UseSwaggerbb 
(bb 
)bb 
;bb 
appff 
.ff 
UseSwaggerUIff 
(ff 
cff 
=>ff !
{gg 
chh 
.hh 
SwaggerEndpointhh !
(hh! "
$strhh" <
,hh< =
$strhh> I
)hhI J
;hhJ K
}ii 
)ii 
;ii 
appkk 
.kk 

UseRoutingkk 
(kk 
)kk 
;kk 
appnn 
.nn 
UseCorsnn 
(nn 
xnn 
=>nn 
xnn 
.oo 
AllowAnyOriginoo 
(oo  
)oo  !
.pp 
AllowAnyMethodpp 
(pp  
)pp  !
.qq 
AllowAnyHeaderqq 
(qq  
)qq  !
)qq! "
;qq" #
appss 
.ss 
UseAuthenticationss !
(ss! "
)ss" #
;ss# $
apptt 
.tt 
UseAuthorizationtt  
(tt  !
)tt! "
;tt" #
appww 
.ww 
UseEndpointsww 
(ww 
	endpointsww &
=>ww' )
{xx 
	endpointsyy 
.yy 
MapControllerRouteyy ,
(yy, -
namezz 
:zz 
$strzz #
,zz# $
pattern{{ 
:{{ 
$str{{ @
){{@ A
;{{A B
	endpoints|| 
.|| 
MapHub|| $
<||$ %
	SignalHub||% .
>||. /
(||/ 0
$str||0 <
)||< =
;||= >
}}} 
)}} 
;}} 
app 
. 
UseSpa 
( 
spa 
=> 
{
ÄÄ 
spa
ÑÑ 
.
ÑÑ 
Options
ÑÑ 
.
ÑÑ 

SourcePath
ÑÑ &
=
ÑÑ' (
$str
ÑÑ) 4
;
ÑÑ4 5
if
ÜÜ 
(
ÜÜ 
env
ÜÜ 
.
ÜÜ 
IsDevelopment
ÜÜ %
(
ÜÜ% &
)
ÜÜ& '
)
ÜÜ' (
{
áá 
spa
àà 
.
àà !
UseAngularCliServer
àà +
(
àà+ ,
	npmScript
àà, 5
:
àà5 6
$str
àà7 >
)
àà> ?
;
àà? @
}
ââ 
}
ää 
)
ää 
;
ää 
}
ãã 	
}
åå 
}çç »
IC:\Users\SEBASTIAN\Documents\GneisRelease-master\gneis\WeatherForecast.cs
	namespace 	
Gneis
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 