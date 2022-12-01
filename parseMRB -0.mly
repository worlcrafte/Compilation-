%{


%}

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
%type   program 

%%
program: 
MAP OPENCURLY mapping CLOSECURLY OPENCURLY statements CLOSECURLY { }
| OPENCURLY statements CLOSECURLY

mapping: map SEP mapping  {}
mapping: map SEP {}
map: 
OBJECT INT AT coord {  }
|OBSTACLE INT AT coord { }
|ROBOT INT AT coord { }

coord: OPENBRACE INT COMMA INT CLOSEBRACE {}

statements: statement SEP statements { }
statements: statement SEP { }

statement: condition LEADSTO action { }

condition:
 element AT position { } 
| condition OR condition { }
| condition AND condition {}
| NOT condition  {}
| OPENBRACE condition CLOSEBRACE {}

position: 
 NORTH INT  {}
|SOUTH INT {}
|EAST  INT {}
|WEST INT {}

element: 
ROBOT INT  {}
| OBJECT INT  { }   
| OBSTACLE INT { }
| ROBOT ANY {  }
| OBJECT ANY {}
| OBSTACLE ANY {}

action: 
position  {}
| OPENSQUARE INT CLOSESQUARE { }
| OPENSQUARE ANY CLOSESQUARE { } 

%%










