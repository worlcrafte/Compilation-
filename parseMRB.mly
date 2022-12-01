%{
open AstMRB;;
%}

%token MAP
%token OBJECT ROBOT OBSTACLE
%token NORTH SOUTH EAST WEST
%token OPENSQUARE CLOSESQUARE OPENCURLY CLOSECURLY OPENBRACE CLOSEBRACE
%token LEADSTO
%token AT ANY SEP COMMA
%token AND OR NOT
%token EOF 
%token <int> INT
%Left AND OR 
%nonassoc NOT

%start program
%type <(AstMRB.mapping_t list)*(AstMRB.statement_t list)>  program 

%%
program: 
MAP OPENCURLY mapping CLOSECURLY OPENCURLY statements CLOSECURLY {($3,$6) }
|  OPENCURLY statements CLOSECURLY {([],$2)}

mapping: map SEP mapping  {$1::$3}
mapping: map SEP {[$1]}
map: 
OBJECT INT AT coord { (Object (Int $2),$4) }
|OBSTACLE INT AT coord {(Obstacle (Int $2),$4)}
|ROBOT INT AT coord { (Robot (Int $2),$4) }

coord: OPENBRACE INT COMMA INT CLOSEBRACE { ($2,$4)}

statements: statement SEP statements { $1::$3}
statements: statement SEP { [$1]}

statement: condition LEADSTO action { ($1,$3)}

condition:
 element AT position { Cond ($1,$3)} 
| condition OR condition { Or ($1,$3)}
| condition AND condition {And ($1,$3)}
| NOT condition  { Not $2}
| OPENBRACE condition CLOSEBRACE { $2}

position: 
 NORTH INT  {North $2}
|SOUTH INT {South $2}
|EAST  INT {East $2}
|WEST INT {West $2}

element: 
ROBOT INT  {Robot  (Int $2)}
| OBJECT INT  { Object  (Int $2)}   
| OBSTACLE INT { Obstacle (Int $2)}
| ROBOT ANY { Robot Any }
| OBJECT ANY {Object Any}
| OBSTACLE ANY {Obstacle Any}

action: 
position  {Move $1}
| OPENSQUARE INT CLOSESQUARE { Take (Int $2)}
| OPENSQUARE ANY CLOSESQUARE { Take Any} 
%%










