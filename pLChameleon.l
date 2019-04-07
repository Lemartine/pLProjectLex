%{
#include <stdio.h>
#include "y.tab.h"
%}

%%
begin                   {return BEGIN;}
import                  {return IMPORT;}
main                    {return MAIN;}
new                     {return NEW;}

Math                    {return MATHLIBRARY;}
Math.abs                {return MATHLIBRARY;}
Math.min                {return MATHLIBRARY;}
Math.max                {return MATHLIBRARY;}
Math.pow                {return MATHLIBRARY;}
Math.sqrt               {return MATHLIBRARY;}
Math.random             {return MATHLIBRARY;}

Scanner                 {return SCANNERLIBRARY;}
in                      {return SCANNERLIBRARY;}
nextInt                 {return SCANNERLIBRARY;}

int                     {return INTEGER;}
str                     {return STRING;}
double                  {return DOUBLE;}
boolean                 {return BOOLEAN;}
float                   {return FLOAT;}
char                    {return CHARACTER;}
NULL                    {return NULL;}
const                   {return CONSTANT;}
true |
false                   {return BOOL;}

if                      {return IF;}
else                    {return ELSE;}
while                   {return WHILE;}

print			{return PRINT;}
printf			{return PRINTF;}
println			{return PRINTLN;}
return          {return RETURN;}

switch                  {return SWITCH;}
case                    {return CASE;}
default                 {return DEFAULT;}
break                   {return BREAK;}
continue                {return CONTINUE;}
try                     {return TRY;}
catch                   {return CATCH;}
throw                   {return THROW;}
excep                   {return EXCEPTION;}

\&                      {return AND;}
\|                      {return OR;}

\(                      {return LEFTPARENT;}
\)                      {return RIGHTPARENT;}
\{                      {return OBRACE;}
\}                      {return EBRACE;}
\'                      {return QUOTE;}
\:                      {return EOL;}
\;                      {return SEMICOLON;}
\,                      {return COMMA;}
\?                      {return COMMENT;}
\\                      {return ESCAPE;}
\.                      {return DOT;}
 
\+                      {return ADD;}
\-                      {return SUBSTRACT;}
\*                      {return MULTIPLICATION;}
\/                      {return DIVISION;}
\%                      {return MODULUS;}

\=                      {return EQUALS;}
\==                     {return ISEQUAL;}
\!=                     {return NEQUALS;}
\<                      {return LESSTHAN;}
\>                      {return GREATERTHAN;}
\=>                     {return GTHANEQUALS;}
\<=                     {return LTHANEQUALS;}
\<=>                    {return DOUBLEIMP;}

\++                     {return INCREMENT;}
\--                     {return DECREMENT;}
\+=                     {return ADDEQUAL;}
\-=                     {return SUBEQUAL;}
\*=                     {return MULTIPLYEQUAL;}
\/=                     {return DIVIDEEQUAL;}
" "							{return SPACE;}

[a-zA-Z][a-zA-Z0-9]*    {return WORD;}
[0-9]*\.[0-9]{0,8}         {return DOUBLENUM;}
[0-9]*                  {return NUMBER;}
[ \t]+
.                       {return UNNOWNCHARACTER;}
%%
