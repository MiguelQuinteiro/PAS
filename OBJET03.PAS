
(****************************************************************************)
(* PROGRAMA  : OBJET03.pas                                                  *)
(* CONTENIDO : Trabajo Practico de Computacion II (Objetivo 3)              *)
(* AUTOR     : Miguel Angel Quinteiro                                       *)
(* FECHA     : 10 - 10 - 1999                                               *)
(****************************************************************************)


PROGRAM igual;

VAR
  mat01 : ARRAY [1..3,1..3] OF INTEGER ;
  mat02 : ARRAY [1..3,1..3] OF INTEGER ;
  ind011 : INTEGER ;
  ind012 : INTEGER ;
  ind021 : INTEGER ;
  ind022 : INTEGER ;
  cond   : INTEGER ;

BEGIN
  FOR ind011 := 1 TO 3 DO BEGIN
      FOR ind012 := 1 TO 3 DO BEGIN
          READLN( mat01 [ind011,ind012]) ;
      END ;
  END;
  FOR ind021 := 1 TO 3 DO BEGIN
      FOR ind022 := 1 TO 3 DO BEGIN
          READLN( mat02 [ind021,ind022]) ;
      END ;
  END;
  cond := 0 ;
  FOR ind011 := 1 TO 3 DO BEGIN
      FOR ind012 := 1 TO 3 DO BEGIN
          IF (mat01[ind011,ind012] <> mat02[ind011,ind012]) THEN BEGIN
             cond := 1 ;
          END;
      END ;
  END;
  IF (cond = 1) THEN BEGIN
     WRITELN ('LAS MATRICES SON DIFERENTES');
  END;
  IF (cond = 0) THEN BEGIN
     WRITELN ('LAS MATRICES SON IGUALES');
  END;
  READLN;
END.
