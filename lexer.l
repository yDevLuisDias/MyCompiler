%{
#include "parser.tab.h"
#include <stdlib.h>
%}

%%

[0-9]+         { yylval = atoi(yytext); return NUMBER; }
[ \t\r\n]+     ; // ignora espaços e quebras de linha
"+"            return PLUS;
"-"            return MINUS;
"*"            return MUL;
"/"            return DIV;
"("            return LPAREN;
")"            return RPAREN;

.              { printf("Caractere inválido: %s\n", yytext); }

%%
