1 PRINT "Introduzca la altura de la piramide: "
2 INPUT  PROMPT "Altura: ": A
3 LET AST = 1
4 LET ESP = A - 1
5 FOR I = 1 TO A
6    LET E$ = "" 
7    FOR J = 1 TO ESP
8       LET E$ = E$ & " "
9    NEXT J
10    FOR K = 1 TO AST 
11       LET E$ = E$ & "*"
12    NEXT K
13    PRINT E$
14    LET ESP = ESP - 1
15    LET AST = AST +2
16 NEXT I
17 END