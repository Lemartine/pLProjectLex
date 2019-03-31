# pLHomework1
<b>Project group members:</b> Bünyamin Yaşar 20150807020 Kubilay Sarıbardak 20150807023

<b>Name of your programming language:</b> Chameleon

<b>Grammar in BNF form:</b><br>

<single type import declaration> ::= import <type name> :

<constructor modifier> ::= Int

<primitive type> ::= <numeric type> | boolean

<integral type> ::=  int | char

<floating-point type> ::= float | double
  
<string type> ::= string

<array type> ::= <type> [ ]

<empty statement> ::= :

<labeled statement> ::= <identifier> ; <statement>

<expression statement> ::= <statement expression> :

<if then statement>::= if ( <expression> ) <statement>

<if then else statement>::= if ( <expression> ) <statement no short if> else <statement>

<switch statement> ::= switch ( <expression> ) <switch block>

<switch label> ::= case <constant expression> : | default :

<while statement> ::= while ( <expression> ) <statement>
  
<break statement> ::= break <identifier> :

<continue statement> ::= continue <identifier>? :

<return statement> ::= return <expression>? :

<throws statement> ::= throw <expression> :
  
<try statement> ::= try <block> <catches> | try <block> <catches>? <finally>

<catch clause> ::= catch ( <formal parameter> ) <block>

<assignment operator> ::= = | *= | /= | %= | += | -=

<conditional or expression> ::= <conditional and expression> | <conditional or expression> | <conditional and expression>

<conditional and expression> ::= <inclusive or expression> | <conditional and expression> & <inclusive or expression>
  
<relational expression> ::= <shift expression> | <relational expression> < <shift expression> | <relational expression> > <shift expression> | <relational expression> <= <shift expression> | <relational expression> >= <shift expression>
  
<additive expression> ::= <multiplicative expression> | <additive expression> + <multiplicative expression> | <additive expression> - <multiplicative expression>
  
<cast expression> ::= ( <primitive type> ) <unary expression> | ( <reference type> ) <unary expression not plus minus>

<unary expression> ::= <preincrement expression> | <predecrement expression> | + <unary expression> | - <unary expression> | <unary expression not plus minus>

<predecrement expression> ::= -- <unary expression>

<preincrement expression> ::= ++ <unary expression>
  


<struct-or-union-specifier> ::= <struct-or-union> <identifier> { {<struct-declaration>}+ }
                              | <struct-or-union> { {<struct-declaration>}+ }
                              | <struct-or-union> <identifier>

<struct-declaration> ::= {<specifier-qualifier>}* <struct-declarator-list>

<specifier-qualifier> ::= <type-specifier>
                        | <type-qualifier>

<struct-declarator-list> ::= <struct-declarator>
                           | <struct-declarator-list> , <struct-declarator>

<struct-declarator> ::= <declarator>
                      | <declarator> : <constant-expression>
                      | : <constant-expression>

<declarator> ::= {<pointer>}? <direct-declarator>

<pointer> ::= * {<type-qualifier>}* {<pointer>}?

<type-qualifier> ::= const

<direct-declarator> ::= <identifier>
                      | ( <declarator> )
                      | <direct-declarator> [ {<constant-expression>}? ]
                      | <direct-declarator> ( <parameter-type-list> )
                      | <direct-declarator> ( {<identifier>}* )

<constant-expression> ::= <conditional-expression>

<conditional-expression> ::= <logical-or-expression>
                           | <logical-or-expression> ? <expression> : <conditional-expression>

<logical-or-expression> ::= <logical-and-expression>
                          | <logical-or-expression> | <logical-and-expression>

<logical-and-expression> ::= <inclusive-or-expression>
                           | <logical-and-expression> & <inclusive-or-expression>

<inclusive-or-expression> ::= <exclusive-or-expression>
                            | <inclusive-or-expression> | <exclusive-or-expression>

<equality-expression> ::= <relational-expression>
                        | <equality-expression> == <relational-expression>
                        | <equality-expression> != <relational-expression>

<relational-expression> ::= <shift-expression>
                          | <relational-expression> < <shift-expression>
                          | <relational-expression> > <shift-expression>
                          | <relational-expression> <= <shift-expression>
                          | <relational-expression> >= <shift-expression>

<additive-expression> ::= <multiplicative-expression>
                        | <additive-expression> + <multiplicative-expression>
                        | <additive-expression> - <multiplicative-expression>

<multiplicative-expression> ::= <cast-expression>
                              | <multiplicative-expression> * <cast-expression>
                              | <multiplicative-expression> / <cast-expression>
                              | <multiplicative-expression> % <cast-expression>

<cast-expression> ::= <unary-expression>
                    | ( <type-name> ) <cast-expression>

<unary-expression> ::= <postfix-expression>
                     | ++ <unary-expression>
                     | -- <unary-expression>

<postfix-expression> ::= <primary-expression>
                       | <postfix-expression> [ <expression> ]
                       | <postfix-expression> ( {<assignment-expression>}* )
                       | <postfix-expression> . <identifier>
                       | <postfix-expression> ++
                       | <postfix-expression> --

<primary-expression> ::= <identifier>
                       | <constant>
                       | <string>
                       | ( <expression> )

<constant> ::= <integer-constant>
             | <character-constant>
             | <floating-constant>

<expression> ::= <assignment-expression>
               | <expression> , <assignment-expression>

<assignment-operator> ::= =
                        | *=
                        | /=
                        | %=
                        | +=
                        | -=
                        | &=
                        | |=

<unary-operator> ::= *
                   | +
                   | -
                   | !

<type-name> ::= {<specifier-qualifier>}+ {<abstract-declarator>}?

<parameter-list> ::= <parameter-declaration>
                   | <parameter-list> , <parameter-declaration>

<parameter-declaration> ::= {<declaration-specifier>}+ <declarator>
                          | {<declaration-specifier>}+ <abstract-declarator>
                          | {<declaration-specifier>}+

<abstract-declarator> ::= <pointer>
                        | <pointer> <direct-abstract-declarator>
                        | <direct-abstract-declarator>

<direct-abstract-declarator> ::=  ( <abstract-declarator> )
                               | {<direct-abstract-declarator>}? [ {<constant-expression>}? ]
                               | {<direct-abstract-declarator>}? ( {<parameter-type-list>}? )>

<typedef-name> ::= <identifier>

<declaration> ::=  {<declaration-specifier>}+ {<init-declarator>}* ;

<init-declarator> ::= <declarator>
                    | <declarator> = <initializer>

<initializer> ::= <assignment-expression>
                | { <initializer-list> }
                | { <initializer-list> , }

<initializer-list> ::= <initializer>
                     | <initializer-list> , <initializer>

<compound-statement> ::= { {<declaration>}* {<statement>}* }

<statement> ::= <labeled-statement>
              | <expression-statement>
              | <compound-statement>
              | <selection-statement>
              | <iteration-statement>
              | <jump-statement>

<labeled-statement> ::= <identifier> : <statement>
                      | case <constant-expression> : <statement>
                      | default : <statement>

<expression-statement> ::= {<expression>}? ;

<selection-statement> ::= if ( <expression> ) <statement>
                        | if ( <expression> ) <statement> else <statement>
                        | switch ( <expression> ) <statement>

<iteration-statement> ::= while ( <expression> ) <statement>

<jump-statement> ::= continue ;
                   | break ;
                   | return {<expression>}? ;
  
<br><b>Explains the syntax of your language:</b>

<br><b>Explains any design decisions you make:</b>



TOKEN



<type name> ::= <identifier>

<expression name> ::= <identifier> | <ambiguous name> . <identifier>

<method name> ::= <identifier> | <ambiguous name>. <identifier>

<ambiguous name>::= <identifier> | <ambiguous name>. <identifier>

<literal> ::= <integer literal> | <floating-point literal> | <boolean literal> | <character literal> | <string literal> | <null literal>

<integer literal> ::= <decimal integer literal> | <hex integer literal> | <octal integer literal>

<decimal integer literal> ::= <decimal numeral> <integer type suffix>?

<hex integer literal> ::= <hex numeral> <integer type suffix>?

<octal integer literal> ::= <octal numeral> <integer type suffix>?

<integer type suffix> ::= l | L

<decimal numeral> ::= 0 | <non zero digit> <digits>?

<digits> ::= <digit> | <digits> <digit>

<digit> ::= 0 | <non zero digit>

<non zero digit> ::= 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

<hex numeral> ::= 0 x <hex digit> | 0 X <hex digit> | <hex numeral> <hex digit>

<hex digit> :: = 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | a | b | c | d | e | f | A | B | C | D | E | F

<octal numeral> ::= 0 <octal digit> | <octal numeral> <octal digit>

<octal digit> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7

<floating-point literal> ::= <digits> . <digits>? <exponent part>? <float type suffix>?

<digits> <exponent part>? <float type suffix>?

<exponent part> ::= <exponent indicator> <signed integer>

<exponent indicator> ::= e | E

<signed integer> ::= <sign>? <digits>

<sign> ::= + | -

<float type suffix> ::= f | F | d | D

<boolean literal> ::= true | false

<character literal> ::= ' <single character> ' | ' <escape sequence> '

<single character> ::= <input character> except ' and \

<string literal> ::= " <string characters>?"

<string characters> ::= <string character> | <string characters> <string character>

<string character> ::= <input character> except " and \ | <escape character>

<null literal> ::= null

<keyword> ::= abstract | boolean | break | byte | case | catch | char | class | const | continue | default | do | double | else | extends | final | finally | float | for | goto | if | implements | import | instanceof | int | interface | long | native | new | package | private | protected | public | return | short | static | super | switch | synchronized | this | throw | throws | transient | try | void | volatile | while
