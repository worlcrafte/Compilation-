{
open ParseMRB;; (* librairie de l'analyseur syntaxique contenant les mots *)
}
let white = [' ' '\t']+
let newline =  ['\r'  '\n']  
let digit = ['0'-'9']

rule token  = parse
| '%'                          {OBJECT}
| '#'                          {ROBOT}
| '$'                          {OBSTACLE}
| 'N'                          {NORTH}
| 'S'                          {SOUTH}
| 'E'                          {EAST}
| 'W'                          {WEST}
|'['                           {OPENSQUARE}
|']'                           {CLOSESQUARE}
|'{'                           {OPENCURLY}
|'}'                           {CLOSECURLY}
|'('                           {OPENBRACE}
|')'                           {CLOSEBRACE}
|">>"                          {LEADSTO}
|'@'                           {AT}
|'_'                           {ANY}
|';'                           {SEP}
|','                           {COMMA}
|"&&"                          {AND}
|"||"                          {OR}
|"!"                           {NOT}
|"MAP"                         {MAP}
|"map"                         {MAP}
| '-'?digit+  as lexeme        {INT (int_of_string lexeme)}
|newline                       {token lexbuf}
|white                         {token  lexbuf}
|eof                           {EOF}