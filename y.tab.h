/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    IMPORT = 258,
    BEGIN = 259,
    MAIN = 260,
    NEW = 261,
    MATHLIBRARY = 262,
    SCANNERLIBRARY = 263,
    INTEGER = 264,
    STRING = 265,
    DOUBLE = 266,
    BOOLEAN = 267,
    FLOAT = 268,
    CHARACTER = 269,
    CONSTANT = 270,
    BOOL = 271,
    IF = 272,
    ELSE = 273,
    WHILE = 274,
    PRINT = 275,
    PRINTF = 276,
    PRINTLN = 277,
    SWITCH = 278,
    CASE = 279,
    DEFAULT = 280,
    BREAK = 281,
    CONTINUE = 282,
    TRY = 283,
    CATCH = 284,
    THROW = 285,
    EXCEPTION = 286,
    AND = 287,
    OR = 288,
    LEFTPARENT = 289,
    RIGHTPARENT = 290,
    OBRACE = 291,
    EBRACE = 292,
    QUOTE = 293,
    EOL = 294,
    SEMICOLON = 295,
    COMMA = 296,
    COMMENT = 297,
    ESCAPE = 298,
    DOT = 299,
    ADD = 300,
    SUBSTRACT = 301,
    MULTIPLICATION = 302,
    DIVISION = 303,
    MODULUS = 304,
    EQUALS = 305,
    ISEQUAL = 306,
    NEQUALS = 307,
    LESSTHAN = 308,
    GREATERTHAN = 309,
    GTHANEQUALS = 310,
    LTHANEQUALS = 311,
    DOUBLEIMP = 312,
    INCREMENT = 313,
    DECREMENT = 314,
    ADDEQUAL = 315,
    SUBEQUAL = 316,
    MULTIPLYEQUAL = 317,
    DIVIDEEQUAL = 318,
    SPACE = 319,
    WORD = 320,
    NUMBER = 321,
    DOUBLENUM = 322,
    RETURN = 323,
    NULL = 324,
    UNNOWNCHARACTER = 325
  };
#endif
/* Tokens.  */
#define IMPORT 258
#define BEGIN 259
#define MAIN 260
#define NEW 261
#define MATHLIBRARY 262
#define SCANNERLIBRARY 263
#define INTEGER 264
#define STRING 265
#define DOUBLE 266
#define BOOLEAN 267
#define FLOAT 268
#define CHARACTER 269
#define CONSTANT 270
#define BOOL 271
#define IF 272
#define ELSE 273
#define WHILE 274
#define PRINT 275
#define PRINTF 276
#define PRINTLN 277
#define SWITCH 278
#define CASE 279
#define DEFAULT 280
#define BREAK 281
#define CONTINUE 282
#define TRY 283
#define CATCH 284
#define THROW 285
#define EXCEPTION 286
#define AND 287
#define OR 288
#define LEFTPARENT 289
#define RIGHTPARENT 290
#define OBRACE 291
#define EBRACE 292
#define QUOTE 293
#define EOL 294
#define SEMICOLON 295
#define COMMA 296
#define COMMENT 297
#define ESCAPE 298
#define DOT 299
#define ADD 300
#define SUBSTRACT 301
#define MULTIPLICATION 302
#define DIVISION 303
#define MODULUS 304
#define EQUALS 305
#define ISEQUAL 306
#define NEQUALS 307
#define LESSTHAN 308
#define GREATERTHAN 309
#define GTHANEQUALS 310
#define LTHANEQUALS 311
#define DOUBLEIMP 312
#define INCREMENT 313
#define DECREMENT 314
#define ADDEQUAL 315
#define SUBEQUAL 316
#define MULTIPLYEQUAL 317
#define DIVIDEEQUAL 318
#define SPACE 319
#define WORD 320
#define NUMBER 321
#define DOUBLENUM 322
#define RETURN 323
#define NULL 324
#define UNNOWNCHARACTER 325

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
