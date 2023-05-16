
(****************************************************************************)
(* PROGRAMA  : PILAS.pas                                                    *)
(* CONTENIDO : Trabajo Practico de Computacion II (Objetivo 6)              *)
(* AUTOR     : Miguel Angel Quinteiro                                       *)
(* FECHA     : 10 - 10 - 1999                                               *)
(****************************************************************************)

(****************************************************************************)
(* CABECERA DEL PROGRAMA                                                    *)
(****************************************************************************)
Program  pilas ;
{ $U+ }              (* DIRECTIVA DEL COMPILADOR U:INTERRUPCION DEL USUARIO *)
USES crt;

(****************************************************************************)
(* SECCION DE DATOS                                                         *)
(****************************************************************************)

CONST
    num = 10 ;
    let = 10 ;
    car = 10 ;

VAR                                   (* DECLARACION DE VARIABLES *)
    pilanum  : ARRAY [1..num] OF CHAR ;
    pilalet  : ARRAY [1..let] OF CHAR ;
    pilacar  : ARRAY [1..car] OF CHAR ;

    topenum  : INTEGER ;
    topelet  : INTEGER ;
    topecar  : INTEGER ;

    Wtopenum  : INTEGER ;
    Wtopelet  : INTEGER ;
    Wtopecar  : INTEGER ;

    indnum   : INTEGER ;
    indlet   : INTEGER ;
    indcar   : INTEGER ;

    entrada  : STRING [255] ;
    longitud : INTEGER ;
    contador : INTEGER ;

    letra    : CHAR ;
    numero   : CHAR ;
    caracter : CHAR ;

(****************************************************************************)
(* SECCION DE CODIGOS                                                       *)
(****************************************************************************)

FUNCTION pilallenanum : BOOLEAN;
BEGIN
    pilallenanum := FALSE ;
    IF topenum = num THEN BEGIN
       pilallenanum := TRUE ;
    END;
END;

FUNCTION pilavacianum : BOOLEAN;
BEGIN
    pilavacianum := FALSE ;
    IF topenum = 0 THEN BEGIN
       pilavacianum := TRUE ;
    END;
END;

FUNCTION topepilanum : CHAR ;
BEGIN
    topepilanum := ' ' ;
    IF pilavacianum THEN BEGIN
       WRITELN('Pila de Numeros Vacia') ;
    END
    ELSE BEGIN
       topepilanum := pilanum [topenum] ;
    END;
END;

PROCEDURE empilarnum (x:CHAR);
BEGIN
    IF pilallenanum THEN BEGIN
       WRITELN(' Pila de Numeros llena ');
       END
    ELSE BEGIN
       pilanum [topenum+ 1] := x ;
       topenum := topenum+ 1     ;
    END;
END;

PROCEDURE desempilarnum ;   (*(letra : CHAR)*)
BEGIN
    IF pilavacianum THEN BEGIN
       WRITELN(' Pila de Numeros Vacia ');
       END
    ELSE BEGIN
       numero  := pilanum [topenum] ;
       (*topenum := topenum - 1 ;*)
    END;
END;

PROCEDURE initpilanum ;
BEGIN
    topenum := 0 ;
END;

FUNCTION pilallenalet : BOOLEAN;
BEGIN
    pilallenalet := FALSE ;
    IF topelet = let THEN BEGIN
       pilallenalet := TRUE ;
    END;
END;

FUNCTION pilavacialet : BOOLEAN;
BEGIN
    pilavacialet := FALSE ;
    IF topelet= 0 THEN BEGIN
       pilavacialet := TRUE ;
    END;
END;

FUNCTION topepilalet : CHAR ;
BEGIN
    topepilalet := ' ' ;
    IF pilavacialet THEN BEGIN
       WRITELN('pilavacialet') ;
    END
    ELSE BEGIN
       topepilalet := pilalet [topelet] ;
    END;
END;

PROCEDURE empilarlet (x:CHAR);
BEGIN
    IF pilallenalet THEN BEGIN
       WRITELN(' pilallenalet ');
       END
    ELSE BEGIN
       pilalet [topelet+ 1] := x ;
       topelet := topelet+ 1     ;
    END;
END;

PROCEDURE desempilarlet ;
BEGIN
    IF pilavacialet THEN BEGIN
       WRITELN(' Pila de leteros Vacia ');
       END
    ELSE BEGIN
       letra  := pilalet [topelet] ;
    END;
END;

PROCEDURE initpilalet ;
BEGIN
    topelet := 0 ;
END;

FUNCTION pilallenacar : BOOLEAN;
BEGIN
    pilallenacar := FALSE ;
    IF topecar = car THEN BEGIN
       pilallenacar := TRUE ;
    END;
END;

FUNCTION pilavaciacar : BOOLEAN;
BEGIN
    pilavaciacar := FALSE ;
    IF topecar= 0 THEN BEGIN
       pilavaciacar := TRUE ;
    END;
END;

FUNCTION topepilacar : CHAR ;
BEGIN
    topepilacar := ' ' ;
    IF pilavaciacar THEN BEGIN
       WRITELN('pilavaciacar') ;
    END
    ELSE BEGIN
       topepilacar := pilacar [topecar] ;
    END;
END;

PROCEDURE empilarcar (x:CHAR);
BEGIN
    IF pilallenacar THEN BEGIN
       WRITELN(' pilallenacar ');
       END
    ELSE BEGIN
       pilacar [topecar+ 1] := x ;
       topecar := topecar+ 1     ;
    END;
END;

PROCEDURE desempilarcar ;
BEGIN
    IF pilavaciacar THEN BEGIN
       WRITELN(' Pila de Caracteres Vacia ');
       END
    ELSE BEGIN
       caracter  := pilacar [topecar] ;
    END;
END;

PROCEDURE initpilacar ;
BEGIN
    topecar := 0 ;
END;


(****************************************************************************)

(* BLOQUE DEL PROGRAMA *)
BEGIN
    TextBackground(LIGHTBLUE);   (* Light *)
    TextColor(WHITE);

    CLRSCR ;
    initpilanum ;
    initpilalet ;
    initpilacar ;

    READLN (entrada) ;
    longitud := LENGTH(entrada);

    FOR contador := 1 TO longitud DO BEGIN
       CASE entrada[contador] OF
         '0'..'9' : BEGIN
                    (*WRITELN(CONTADOR,' ',entrada[contador],' NUMEROS ') ;*)
                    empilarnum(entrada[contador]) ;
                    END ;
         'A'..'Z',
         'a'..'z' : BEGIN
                    (*WRITELN(CONTADOR,' ',entrada[contador],' LETRAS ') ;*)
                    empilarlet(entrada[contador]) ;
                    END ;
       ELSE
         (*WRITELN(CONTADOR,' ',entrada[contador],' OTRO CARACTER ') ;*)
         empilarcar(entrada[contador]) ;
       END;
    END;

    (* MUESTRA PILA DE NUMEROS *)
    Wtopenum := topenum ;
    topenum := 1    ;
    WRITELN ;
    WRITELN('  =================================================') ;
    WRITELN('  * * NUMEROS EN EL ORDEN QUE FUERON INGRESADOS * *') ;
    WRITELN('  =================================================') ;
    FOR contador := 1 TO Wtopenum DO BEGIN
       desempilarnum   ;
       WRITELN('    ',numero) ;
       topenum := topenum + 1
    END ;
    WRITELN('  =================================================') ;

    (* MUESTRA PILA DE LETRAS *)
    Wtopelet := topelet ;
    topelet := 1    ;
    WRITELN ;
    WRITELN('  ================================================') ;
    WRITELN('  * * LETRAS EN EL ORDEN QUE FUERON INGRESADOS * *') ;
    WRITELN('  ================================================') ;
    FOR contador := 1 TO Wtopelet DO BEGIN
       desempilarlet   ;
       WRITELN('    ',letra) ;
       topelet := topelet + 1
    END ;
    WRITELN('  ================================================') ;

    (* MUESTRA PILA DE OTROS CARACTERES *)
    Wtopecar := topecar ;
    topecar := 1    ;
    WRITELN ;
    WRITELN('  ==========================================================') ;
    WRITELN('  * * OTROS CARACTERES EN EL ORDEN QUE FUERON INGRESADOS * *') ;
    WRITELN('  ==========================================================') ;
    FOR contador := 1 TO Wtopecar DO BEGIN
       desempilarcar  ;
       WRITELN('    ',caracter) ;
       topecar := topecar + 1
    END ;
    WRITELN('  ==========================================================') ;

    READLN;
END.
(****************************************************************************)

