type token =
  | MAP
  | OBJECT
  | ROBOT
  | OBSTACLE
  | NORTH
  | SOUTH
  | EAST
  | WEST
  | OPENSQUARE
  | CLOSESQUARE
  | OPENCURLY
  | CLOSECURLY
  | OPENBRACE
  | CLOSEBRACE
  | LEADSTO
  | AT
  | ANY
  | SEP
  | COMMA
  | AND
  | OR
  | NOT
  | EOF
  | INT of (int)

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> (AstMRB.mapping_t list)*(AstMRB.statement_t list)
