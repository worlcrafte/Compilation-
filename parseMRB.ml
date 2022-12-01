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

open Parsing;;
let _ = parse_error;;
# 2 "parseMRB.mly"
open AstMRB;;
# 32 "parseMRB.ml"
let yytransl_const = [|
  257 (* MAP *);
  258 (* OBJECT *);
  259 (* ROBOT *);
  260 (* OBSTACLE *);
  261 (* NORTH *);
  262 (* SOUTH *);
  263 (* EAST *);
  264 (* WEST *);
  265 (* OPENSQUARE *);
  266 (* CLOSESQUARE *);
  267 (* OPENCURLY *);
  268 (* CLOSECURLY *);
  269 (* OPENBRACE *);
  270 (* CLOSEBRACE *);
  271 (* LEADSTO *);
  272 (* AT *);
  273 (* ANY *);
  274 (* SEP *);
  275 (* COMMA *);
  276 (* AND *);
  277 (* OR *);
  278 (* NOT *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  279 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\004\000\004\000\004\000\005\000\
\003\000\003\000\006\000\007\000\007\000\007\000\007\000\007\000\
\010\000\010\000\010\000\010\000\009\000\009\000\009\000\009\000\
\009\000\009\000\008\000\008\000\008\000\000\000"

let yylen = "\002\000\
\007\000\003\000\003\000\002\000\004\000\004\000\004\000\005\000\
\003\000\002\000\003\000\003\000\003\000\003\000\002\000\003\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\001\000\003\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\025\000\022\000\024\000\021\000\
\026\000\023\000\000\000\015\000\002\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\
\009\000\000\000\000\000\000\000\000\000\000\000\011\000\027\000\
\014\000\013\000\012\000\000\000\000\000\000\000\000\000\003\000\
\017\000\018\000\019\000\020\000\000\000\000\000\000\000\005\000\
\007\000\006\000\000\000\029\000\028\000\000\000\001\000\000\000\
\000\000\008\000"

let yydgoto = "\002\000\
\005\000\019\000\012\000\020\000\064\000\013\000\014\000\047\000\
\015\000\048\000"

let yysindex = "\004\000\
\002\255\000\000\031\255\004\255\000\000\017\255\251\254\255\254\
\010\255\004\255\004\255\032\255\025\255\250\254\029\255\023\255\
\026\255\027\255\035\255\033\255\000\000\000\000\000\000\000\000\
\000\000\000\000\246\254\000\000\000\000\004\255\030\255\004\255\
\004\255\024\255\036\255\037\255\038\255\044\255\017\255\000\000\
\000\000\034\255\039\255\040\255\041\255\011\255\000\000\000\000\
\000\000\000\000\000\000\043\255\043\255\043\255\004\255\000\000\
\000\000\000\000\000\000\000\000\048\255\049\255\042\255\000\000\
\000\000\000\000\054\255\000\000\000\000\050\255\000\000\045\255\
\046\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\055\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\058\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\009\000\226\255\000\000\243\255\000\000\247\255\000\000\
\000\000\027\000"

let yytablesize = 70
let yytable = "\041\000\
\027\000\028\000\003\000\040\000\001\000\007\000\008\000\009\000\
\031\000\032\000\033\000\021\000\004\000\032\000\033\000\023\000\
\010\000\022\000\016\000\017\000\018\000\024\000\049\000\050\000\
\067\000\011\000\025\000\061\000\042\000\043\000\044\000\045\000\
\026\000\062\000\042\000\043\000\044\000\045\000\046\000\065\000\
\066\000\006\000\030\000\029\000\034\000\035\000\038\000\056\000\
\036\000\037\000\039\000\052\000\053\000\054\000\055\000\063\000\
\057\000\068\000\069\000\074\000\051\000\058\000\059\000\060\000\
\070\000\071\000\010\000\073\000\072\000\004\000"

let yycheck = "\030\000\
\010\000\011\000\001\001\014\001\001\000\002\001\003\001\004\001\
\015\001\020\001\021\001\017\001\011\001\020\001\021\001\017\001\
\013\001\023\001\002\001\003\001\004\001\023\001\032\000\033\000\
\055\000\022\001\017\001\017\001\005\001\006\001\007\001\008\001\
\023\001\023\001\005\001\006\001\007\001\008\001\009\001\053\000\
\054\000\011\001\018\001\012\001\016\001\023\001\012\001\039\000\
\023\001\023\001\018\001\016\001\016\001\016\001\011\001\013\001\
\023\001\010\001\010\001\014\001\034\000\023\001\023\001\023\001\
\023\001\012\001\012\001\023\001\019\001\012\001"

let yynames_const = "\
  MAP\000\
  OBJECT\000\
  ROBOT\000\
  OBSTACLE\000\
  NORTH\000\
  SOUTH\000\
  EAST\000\
  WEST\000\
  OPENSQUARE\000\
  CLOSESQUARE\000\
  OPENCURLY\000\
  CLOSECURLY\000\
  OPENBRACE\000\
  CLOSEBRACE\000\
  LEADSTO\000\
  AT\000\
  ANY\000\
  SEP\000\
  COMMA\000\
  AND\000\
  OR\000\
  NOT\000\
  EOF\000\
  "

let yynames_block = "\
  INT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'mapping) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'statements) in
    Obj.repr(
# 22 "parseMRB.mly"
                                                                 ((_3,_6) )
# 180 "parseMRB.ml"
               : (AstMRB.mapping_t list)*(AstMRB.statement_t list)))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'statements) in
    Obj.repr(
# 23 "parseMRB.mly"
                                   (([],_2))
# 187 "parseMRB.ml"
               : (AstMRB.mapping_t list)*(AstMRB.statement_t list)))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'map) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'mapping) in
    Obj.repr(
# 25 "parseMRB.mly"
                          (_1::_3)
# 195 "parseMRB.ml"
               : 'mapping))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'map) in
    Obj.repr(
# 26 "parseMRB.mly"
                 ([_1])
# 202 "parseMRB.ml"
               : 'mapping))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'coord) in
    Obj.repr(
# 28 "parseMRB.mly"
                    ( (Object (Int _2),_4) )
# 210 "parseMRB.ml"
               : 'map))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'coord) in
    Obj.repr(
# 29 "parseMRB.mly"
                       ((Obstacle (Int _2),_4))
# 218 "parseMRB.ml"
               : 'map))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'coord) in
    Obj.repr(
# 30 "parseMRB.mly"
                    ( (Robot (Int _2),_4) )
# 226 "parseMRB.ml"
               : 'map))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 32 "parseMRB.mly"
                                          ( (_2,_4))
# 234 "parseMRB.ml"
               : 'coord))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'statement) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'statements) in
    Obj.repr(
# 34 "parseMRB.mly"
                                     ( _1::_3)
# 242 "parseMRB.ml"
               : 'statements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'statement) in
    Obj.repr(
# 35 "parseMRB.mly"
                          ( [_1])
# 249 "parseMRB.ml"
               : 'statements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'condition) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'action) in
    Obj.repr(
# 37 "parseMRB.mly"
                                    ( (_1,_3))
# 257 "parseMRB.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'element) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'position) in
    Obj.repr(
# 40 "parseMRB.mly"
                     ( Cond (_1,_3))
# 265 "parseMRB.ml"
               : 'condition))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'condition) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'condition) in
    Obj.repr(
# 41 "parseMRB.mly"
                         ( Or (_1,_3))
# 273 "parseMRB.ml"
               : 'condition))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'condition) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'condition) in
    Obj.repr(
# 42 "parseMRB.mly"
                          (And (_1,_3))
# 281 "parseMRB.ml"
               : 'condition))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'condition) in
    Obj.repr(
# 43 "parseMRB.mly"
                 ( Not _2)
# 288 "parseMRB.ml"
               : 'condition))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'condition) in
    Obj.repr(
# 44 "parseMRB.mly"
                                 ( _2)
# 295 "parseMRB.ml"
               : 'condition))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 47 "parseMRB.mly"
            (North _2)
# 302 "parseMRB.ml"
               : 'position))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 48 "parseMRB.mly"
           (South _2)
# 309 "parseMRB.ml"
               : 'position))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 49 "parseMRB.mly"
           (East _2)
# 316 "parseMRB.ml"
               : 'position))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 50 "parseMRB.mly"
          (West _2)
# 323 "parseMRB.ml"
               : 'position))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 53 "parseMRB.mly"
           (Robot  (Int _2))
# 330 "parseMRB.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 54 "parseMRB.mly"
              ( Object  (Int _2))
# 337 "parseMRB.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 55 "parseMRB.mly"
               ( Obstacle (Int _2))
# 344 "parseMRB.ml"
               : 'element))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "parseMRB.mly"
            ( Robot Any )
# 350 "parseMRB.ml"
               : 'element))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "parseMRB.mly"
             (Object Any)
# 356 "parseMRB.ml"
               : 'element))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parseMRB.mly"
               (Obstacle Any)
# 362 "parseMRB.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'position) in
    Obj.repr(
# 61 "parseMRB.mly"
          (Move _1)
# 369 "parseMRB.ml"
               : 'action))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 62 "parseMRB.mly"
                             ( Take (Int _2))
# 376 "parseMRB.ml"
               : 'action))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "parseMRB.mly"
                             ( Take Any)
# 382 "parseMRB.ml"
               : 'action))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : (AstMRB.mapping_t list)*(AstMRB.statement_t list))
;;
# 65 "parseMRB.mly"










# 418 "parseMRB.ml"
