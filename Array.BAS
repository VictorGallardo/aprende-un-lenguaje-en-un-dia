DIM NUM(10)
RANDOMIZE TIME*10
PRINT "Array original: "
FOR I = 1 TO 10

   LET NUM(I) = INT (100*RND+1)
NEXT I
FOR J = 1 TO 10

   PRINT NUM(J)
NEXT J
FOR I = 1 TO 10
   LET K = 2
   LET PRIM = 1
   LET CAMB = 0
   LET AUX = 1
   DO 
      IF  MOD(NUM(I), K) = 0 THEN LET PRIM = 0
      LET K = K + 1
   LOOP WHILE K < NUM(I)
   IF PRIM = 1 THEN 
      LET AUX = NUM(I)
      FOR J = 1 TO 10
         LET K = 2       
         DO 
            IF  MOD(NUM(J), K) = 0 THEN LET PRIM = 0
            LET K = K + 1
         LOOP WHILE K < NUM(J)
         IF PRIM = 0 THEN
          
            LET NUM(I) = NUM(J)
            LET NUM(J) = AUX
            LET J = 10
         END IF
      NEXT J
   END IF
NEXT I
PRINT "Array modificado: "
FOR I = 1 TO 10 
   PRINT NUM(I)
NEXT I
END
