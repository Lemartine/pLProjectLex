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

<equality-expression> ::= <relational-expression>
                        | <equality-expression> == <relational-expression>
                        | <equality-expression> != <relational-expression>
  
<assignment operator> :: *= | /= | %= | += | -=

<conditional or expression> ::= <conditional and expression> | <conditional or expression> | <conditional and expression>

<conditional and expression> ::= <inclusive or expression> | <conditional and expression> & <inclusive or expression>
  
<relational expression> ::= <shift expression> | <relational expression> < <shift expression> | <relational expression> > <shift expression> | <relational expression> <= <shift expression> | <relational expression> >= <shift expression>
  
<additive expression> ::= <multiplicative expression> | <additive expression> + <multiplicative expression> | <additive expression> - <multiplicative expression>
  
<cast expression> ::= ( <primitive type> ) <unary expression> 

<predecrement expression> ::= -- <unary expression>

<preincrement expression> ::= ++ <unary expression>

<type-qualifier> ::= const

<direct-declarator> ::= <identifier>
                      | ( <declarator> )
                      | <direct-declarator> [ {<constant-expression>} ]
                      | <direct-declarator> ( <parameter-type-list> )
                      | <direct-declarator>  {<identifier>} 

<labeled-statement> ::= <identifier> : <statement>
                      | case <constant-expression> : <statement>
                      | default : <statement>

<selection-statement> ::= if ( <expression> ) <statement>
                        | if ( <expression> ) <statement> else <statement>
                        | switch ( <expression> ) <statement>

<iteration-statement> ::= while ( <expression> ) <statement>

<jump-statement> ::= continue ;
                   | break ;
                   | return (<expression>) ;
  
<boolean literal> ::= true | false

<single character> ::= <input character> except ' and \

<string literal> ::= ' <string characters>?'

<null literal> ::= null

<keyword> ::= boolean | break | case | catch | char | const | continue | default | double | else | float | if | import | int | return | switch | throw | try | while

<br><b>Explains the syntax of your language:</b>

<br><b>Explains any design decisions you make:</b>
