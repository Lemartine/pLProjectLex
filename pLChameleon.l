%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
%}

%%
import			{printf("IMPORT ");}
Int			{printf("BEGIN ");}	
main			{printf("MAIN ");}

Math			{printf("MATHLIBRARY ");}
Math.abs		{printf("MATHLIBRARY ");}
Math.min		{printf("MATHLIBRARY ");}
Math.max		{printf("MATHLIBRARY ");}
Math.pow		{printf("MATHLIBRARY ");}
Math.sqrt		{printf("MATHLIBRARY ");}
Math.random		{printf("MATHLIBRARY ");}

Scanner			{printf("SCANNERLIBRARY ");}
in			{printf("SCANNERLIBRARY ");}
nextInt			{printf("SCANNERLIBRARY ");}
 
int                     {printf("INTEGER ");}
string                  {printf("STRING ");}
double			{printf("DOUBLE ");}
boolean			{printf("BOOLEAN ");}
float			{printf("FLOAT ");}
char                    {printf("CHARACTER ");}
NULL                    {printf("NULL ");}
const                   {printf("CONSTANT ");}
true |
false                   {printf("BOOLEAN ");}

if                      {printf("IF ");}
else                    {printf("ELSE ");}
elseif                  {printf("ELSEIF ");}
then                    {printf("THEN ");}
while                   {printf("WHILE ");}
switch			{printf("SWITCH ");}
case			{printf("CASE ");}
default			{printf("DEFAULT ");}
break			{printf("BREAK ");}
continue		{printf("CONTINUE ");}
try			{printf("TRY");}
catch			{printf("CATCH");}

print                   {printf("PRINT ");}
println                 {printf("PRINT ");}
printf                  {printf("PRINT ");}

\&                      {printf("AND ");}
\|			{printf("OR ");}

\(                      {printf("LEFTPARENT ");}
\)                      {printf("RIGHTPARENT ");}
\{                      {printf("OBRACE ");}
\}                      {printf("EBRACE ");} 
\'                      {printf("QUOTE ");}  
\:                      {printf("ASSIGN ");}                                               
\;                      {printf("SEMICOLON ");}                
\,                      {printf("COMMA ");}
\?                      {printf("COMMENT ");}
\\                      {printf("ESCAPE ");}
\.			{printf("DOT ");}

\+                      {printf("ADD ");}
\-                      {printf("SUBSTRACT ");}
\*                      {printf("MULTIPLICATION ");}
\/                      {printf("DIVISION ");}
\%                      {printf("MODULUS ");}

\=                      {printf("EQUALS ");}
\==                     {printf("ISEQUAL ");}
\!=                     {printf("NEQUALS ");}
\<                      {printf("LESSTHAN ");}
\>                      {printf("GREATERTHAN ");}
\=>                     {printf("GTHANEQUALS ");}
\<=                     {printf("LTHANEQUALS ");}
\<=>                    {printf("DOUBLEIMP ");}

\++                     {printf("INCREMENT ");}
\--                     {printf("DECREMENT ");}
\+=                     {printf("ADDEQUAL ");}
\-=                     {printf("SUBEQUAL ");}
\*=                     {printf("MULTIPLYEQUAL ");}
\/=                     {printf("DIVIDEEQUAL ");}

[a-zA-Z][a-zA-Z0-9]*    {printf("WORD ");}
[0-9]*                  {printf("NUMBER ");}
[ \t]+
.                       {printf("UNNOWNCHARACTER ");}
%%

int main(int argc, char** argv){
        if(argc > 1){
                char c;
                yyin = fopen(argv[1],"r");
                yylex();
        }
        return 0;
}

