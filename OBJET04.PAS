
(****************************************************************************)
(* PROGRAMA  : OBJET04.pas                                                  *)
(* CONTENIDO : Trabajo Practico de Computacion II (Objetivo 4)              *)
(* AUTOR     : Miguel Angel Quinteiro                                       *)
(* FECHA     : 10 - 10 - 1999                                               *)
(****************************************************************************)

PROGRAM igual;

VAR
  mat01 : ARRAY [1..2,1..2] OF INTEGER ;
  mat02 : ARRAY [1..2,1..2] OF INTEGER ;
  mat03 : ARRAY [1..2,1..2] OF INTEGER ;
  ind011 : INTEGER ;
  ind012 : INTEGER ;
  ind021 : INTEGER ;
  ind022 : INTEGER ;

PROCEDURE llenamat01 ;
BEGIN
  FOR ind011 := 1 TO 2 DO BEGIN
      FOR ind012 := 1 TO 2 DO BEGIN
          READLN( mat01 [ind011,ind012]) ;
      END ;
  END;
END;

PROCEDURE llenamat02 ;
BEGIN
  FOR ind021 := 1 TO 2 DO BEGIN
      FOR ind022 := 1 TO 2 DO BEGIN
          READLN( mat02 [ind021,ind022]) ;
      END ;
  END;
END;

PROCEDURE multiplica ;
BEGIN
  mat03[1,1] := mat01[1,1] * mat02[1,1] + mat01[1,2] * mat02[2,1] ;
  mat03[1,2] := mat01[1,1] * mat02[1,2] + mat01[1,2] * mat02[2,2] ;
  mat03[2,1] := mat01[2,1] * mat02[1,1] + mat01[2,2] * mat02[2,1] ;
  mat03[2,2] := mat01[2,1] * mat02[1,2] + mat01[2,2] * mat02[2,2] ;
  WRITELN (mat03[1,1]) ;
  WRITELN (mat03[1,2]) ;
  WRITELN (mat03[2,1]) ;
  WRITELN (mat03[2,2]) ;
END;

BEGIN
  llenamat01 ;
  llenamat02 ;
  multiplica ;
  READLN ;
END.

