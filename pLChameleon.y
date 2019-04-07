%{
    #include <stdio.h>
    int yylex(void)
    void yyerror(char*)
%}


%token IMPORT BEGIN MAIN NEW
%token MATHLIBRARY SCANNERLIBRARY
%token INTEGER STRING DOUBLE BOOLEAN FLOAT CHARACTER CONSTANT BOOL
%token IF ELSE WHILE
%token PRINT PRINTF PRINTLN
%token SWITCH CASE DEFAULT BREAK CONTINUE TRY CATCH THROW EXCEPTION
%token AND OR
%token LEFTPARENT RIGHTPARENT OBRACE EBRACE QUOTE EOL SEMICOLON COMMA COMMENT ESCAPE DOT
%token ADD SUBSTRACT MULTIPLICATION DIVISION MODULUS
%token EQUALS ISEQUAL NEQUALS LESSTHAN GREATERTHAN GTHANEQUALS LTHANEQUALS DOUBLEIMP
%token INCREMENT DECREMENT ADDEQUAL SUBEQUAL MULTIPLYEQUAL DIVIDEEQUAL SPACE
%token WORD NUMBER DOUBLENUM RETURN NULL
%token UNNOWNCHARACTER

%%
commands: begin;
begin: BEGIN WORD OBRACE funlist EBRACE;
funlist: fundeclaration | fundeclaration funlist;
fundeclaration: typespecifier WORD LEFTPARENT parameter RIGHTPARENT compoundstmt;
typespecifier: INTEGER;
vardeclaration: typespecifier WORD EOL; 
parameter: paramlist | %empty;
paramlist: paramlist COMMA parameter | parameter;
parameter: typespecifier word;
word: number | WORD;
number: DOUBLENUM | NUMBER;
compoundstmt: OBRACE localdeclarations statementlist EBRACE;
localdeclarations: localdeclarations vardeclaration | %empty;
statementlist: statementlist statement | %empty;
statement: expressionstmt | compoundstmt | selectionstmt | iterationstmt | returnstmt;
expressionstmt: expression EOL | EOL;
selectionstmt: ifstart | ifstart ifendlist;
ifstart: IF LEFTPARENT ifconlist RIGHTPARENT OBRACE statementlist EBRACE;
ifendlist: ifend | ifend ifendlist;
ifend: else LEFTPARENT ifconlist RIGHTPARENT OBRACE statementlist EBRACE | else OBRACE statementlist EBRACE;
else : ELSE LEFTPARENT ifconlist RIGHTPARENT | ELSE; 
ifconlist: ifcon | ifcon OR ifconlist | ifcon AND ifconlist;
ifcon: BOOL | WORD cnop WORD ;
cnop: EQUALS | ISEQUAL | NEQUALS | LESSTHAN | GREATERTHAN | GTHANEQUALS | LTHANEQUALS | DOUBLEIMP;
iterationstmt: WHILE LEFTPARENT ifconlist RIGHTPARENT OBRACE statement EBRACE;
returnstmt: RETURN EOL | RETURN expression EOL;
expression: def WORD EQUALS expression | simpleexpression | NULL ;
def: INTEGER | STRING | DOUBLE | BOOLEAN | FLOAT | CHARACTER;
simpleexpression: additiveexpression cnop additiveexpression | additiveexpression;
additiveexpression: additiveexpression addop term | term ;
addop: ADD | SUBSTRACT;
term: term mulop factor EOL| factor EOL ;
mulop: MULTIPLICATION | DIVISION | MODULUS;
factor: LEFTPARENT expression RIGHTPARENT | def | call | NUMBER;
call: WORD LEFTPARENT args RIGHTPARENT;
args: arglist | %empty;
arglist: arglist COMMA expression | expression;
%%                                                                            

void yyerror(char *s){
    fprintf(stderr,"%s\n",s);
}

int main (void) {     
  yyparse ();
}
