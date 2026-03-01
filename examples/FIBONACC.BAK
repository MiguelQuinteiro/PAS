
(****************************************************************************)
(* PROGRAMA  : FIBONACC.pas                                                 *)
(* CONTENIDO : Trabajo Practico de Computacion II (Objetivo 7)              *)
(* AUTOR     : Miguel Angel Quinteiro                                       *)
(* FECHA     : 10 - 10 - 1999                                               *)
(****************************************************************************)

(****************************************************************************)
(* CABECERA DEL PROGRAMA                                                    *)
(****************************************************************************)

Program  fibonacc ;

{ $U+ }              (* DIRECTIVA DEL COMPILADOR U:INTERRUPCION DEL USUARIO *)

USES crt;

(****************************************************************************)
(* SECCION DE DATOS                                                         *)
(****************************************************************************)

VAR                                   (* DECLARACION DE VARIABLES *)
    n : INTEGER ;
    c : INTEGER ;

(****************************************************************************)
(* SECCION DE CODIGOS                                                       *)
(****************************************************************************)

FUNCTION fibo (n:INTEGER):INTEGER ;
BEGIN
    IF n = 0 THEN BEGIN
       fibo := 1
    END;
    IF n = 1 THEN BEGIN
       fibo := 1
    END;
    IF (n <> 1) AND (n<>0) THEN BEGIN
       fibo := fibo(n-1) + fibo(n-2)
    END;
END;

(****************************************************************************)
(* BLOQUE DEL PROGRAMA                                                      *)
(****************************************************************************)

BEGIN
    TextBackground(LIGHTBLUE);   (* Light *)
    TextColor(WHITE);

    CLRSCR ;
    WRITELN(' INGRESE EL NUMERO DE TERMINOS A CALCULAR: ') ;
    READLN (n) ;
    FOR c := 0 TO n-1 DO BEGIN
        WRITELN(' EL TERMINO ',c+1:3,'  ES: ',fibo(c)) ;
    END ;
    READLN;
END.
(****************************************************************************)
