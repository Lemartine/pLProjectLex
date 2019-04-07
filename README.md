# pLHomework1
Project group members: Bünyamin Yaşar 20150807020 Kubilay Sarıbardak 20150807023

Name of your programming language: Chameleon

Grammar in BNF form:
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

Explains the syntax of your language:
In the language we created, you can take the packages, saying import packagename for example 
<b>import Math:</b>
<b>import Scanner:</b>
In our language main function will start <b>Int main(){}</b> 
In our language you have to finish the sentence with <b>":"</b>.
In our language when you want to print something you can actually write just <b>print('');</b>
Explains any design decisions you make:
A basic object model that was fairly obvious to anybody who tried to use structs as pseudo-objects<br>
A standard template library which is really quite good

We get a few errors in the compilation section. We didn't find it on the internet. Please share the solution of our error..
