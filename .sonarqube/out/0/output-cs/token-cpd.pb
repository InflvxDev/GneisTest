?
CC:\Users\SEBASTIAN\Documents\GneisRelease-master\Entidad\Checkin.cs
	namespace 	
Entidad
 
{ 
public 

class 
Checkin 
{ 
[ 	
Key	 
] 
[		 	
Column			 
(		 
TypeName		 
=		 
$str		 *
)		* +
]		+ ,
public

 
string

 
	Idcheckin

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Idhabitacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
	Idcliente 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Numeroinvitados "
{# $
get$ '
;' (
set) ,
;, -
}- .
public 
DateTime 
Fechaentrada $
{% &
get& )
;) *
set+ .
;. /
}/ 0
} 
} ?
DC:\Users\SEBASTIAN\Documents\GneisRelease-master\Entidad\Checkout.cs
	namespace 	
Entidad
 
{ 
public 

class 
Checkout 
{ 
[		 	
Key			 
]		 
[

 	
Column

	 
(

 
TypeName

 
=

 
$str

 *
)

* +
]

+ ,
public 
string 

Idcheckout  
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Idhabitacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
	Idcliente 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Numeroinvitados "
{# $
get$ '
;' (
set) ,
;, -
}- .
public 
DateTime 
Fechaentrada $
{% &
get& )
;) *
set+ .
;. /
}/ 0
public 
DateTime 
Fechasalida #
{$ %
get% (
;( )
set* -
;- .
}. /
public 
int 
DiasHospedaje  
{! "
get" %
;% &
set' *
;* +
}+ ,
[ 	
Column	 
( 
TypeName 
= 
$str +
)+ ,
], -
public 
decimal 
TotalHospedaje %
{& '
get' *
;* +
set, /
;/ 0
}0 1
} 
} ?
CC:\Users\SEBASTIAN\Documents\GneisRelease-master\Entidad\Cliente.cs
	namespace 	
Entidad
 
{ 
public 

class 
Cliente 
{ 
[ 	
Key	 
] 
[		 	
Column			 
(		 
TypeName		 
=		 
$str		 *
)		* +
]		+ ,
public

 
string

 
Cedula

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Edad 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Sexo 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Column	 
( 
TypeName 
= 
$str +
)+ ,
], -
public 
decimal 
Telefono 
{  !
get! $
;$ %
set& )
;) *
}* +
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
	Direccion 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 

Hospedajes 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ?
DC:\Users\SEBASTIAN\Documents\GneisRelease-master\Entidad\Empleado.cs
	namespace 	
Entidad
 
{ 
public 

class 
Empleado 
{ 
[ 	
Key	 
] 
[		 	
Column			 
(		 
TypeName		 
=		 
$str		 *
)		* +
]		+ ,
public

 
string

 
Cedula

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Edad 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Sexo 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Column	 
( 
TypeName 
= 
$str +
)+ ,
], -
public 
decimal 
Telefono 
{  !
get! $
;$ %
set& )
;) *
}* +
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
	Direccion 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Cargo 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Horario 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ?
FC:\Users\SEBASTIAN\Documents\GneisRelease-master\Entidad\Habitacion.cs
	namespace 	
Entidad
 
{ 
public 

class 

Habitacion 
{ 
[ 	
Key	 
] 
[		 	
Column			 
(		 
TypeName		 
=		 
$str		 *
)		* +
]		+ ,
public

 
string

 
Idhabitacion

 "
{

# $
get

$ '
;

' (
set

) ,
;

, -
}

- .
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Tipo 
{ 
get 
;  
set! $
;$ %
}% &
[ 	
Column	 
( 
TypeName 
= 
$str +
)+ ,
], -
public 
decimal 
Costo 
{ 
get !
;! "
set# &
;& '
}' (
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Estado 
{ 
get !
;! "
set# &
;& '
}' (
public 
int 
Usos 
{ 
get 
; 
set !
;! "
}" #
} 
} ?

DC:\Users\SEBASTIAN\Documents\GneisRelease-master\Entidad\Producto.cs
	namespace 	
Entidad
 
{ 
public 

class 
Producto 
{ 
[ 	
Key	 
] 
[		 	
Column			 
(		 
TypeName		 
=		 
$str		 *
)		* +
]		+ ,
public

 
string

 

Idproducto

  
{

! "
get

" %
;

% &
set

' *
;

* +
}

+ ,
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Descripcion !
{" #
get# &
;& '
set( +
;+ ,
}, -
public 
int 
Stock 
{ 
get 
; 
set "
;" #
}# $
[ 	
Column	 
( 
TypeName 
= 
$str +
)+ ,
], -
public 
decimal 

Vrunitario !
{" #
get# &
;& '
set( +
;+ ,
}, -
} 
} ?
CC:\Users\SEBASTIAN\Documents\GneisRelease-master\Entidad\Reserva.cs
	namespace 	
Entidad
 
{ 
public 

class 
Reserva 
{ 
[ 	
Key	 
] 
[		 	
Column			 
(		 
TypeName		 
=		 
$str		 *
)		* +
]		+ ,
public

 
string

 
	Idreserva

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Idhabitacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
	Idcliente 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Numeroinvitados "
{# $
get$ '
;' (
set) ,
;, -
}- .
public 
DateTime 
Fechareserva $
{% &
get& )
;) *
set+ .
;. /
}/ 0
} 
} ?
@C:\Users\SEBASTIAN\Documents\GneisRelease-master\Entidad\User.cs
	namespace 	
Entidad
 
{ 
public 

class 
User 
{ 
[ 	
Key	 
] 
public 
string 
Username 
{  
get  #
;# $
set% (
;( )
}) *
public		 
string		 
Password		 
{		  
get		  #
;		# $
set		% (
;		( )
}		) *
public

 
string

 
Role

 
{

 
get

 
;

  
set

! $
;

$ %
}

% &
public 
string 
State 
{ 
get  
;  !
set" %
;% &
}& '
} 
} ?
CC:\Users\SEBASTIAN\Documents\GneisRelease-master\Entidad\Usuario.cs
	namespace 	
Entidad
 
{ 
public 

class 
Usuario 
{ 
[ 	
Key	 
] 
[		 	
Column			 
(		 
TypeName		 
=		 
$str		 *
)		* +
]		+ ,
public

 
string

 
Iduser

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Typeuser 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} 