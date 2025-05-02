%{
#include <cstdio>
#include <cstdlib>

int yylex();
void yyerror(const char *s);
%}

%token NUMBER
%token PLUS MINUS MUL DIV LPAREN RPAREN

%left PLUS MINUS
%left MUL DIV

%%

input:
    | input expr '\n' { printf("Resultado: %d\n", $2); }
    ;

expr:
      NUMBER              { $$ = $1; }
    | expr PLUS expr      { $$ = $1 + $3; }
    | expr MINUS expr     { $$ = $1 - $3; }
    | expr MUL expr       { $$ = $1 * $3; }
    | expr DIV expr       { $$ = $1 / $3; }
    | LPAREN expr RPAREN  { $$ = $2; }
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Erro de sintaxe: %s\n", s);
}

