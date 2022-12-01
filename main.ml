
(*Etats*)
(*--------------------------------------------*)
module ISet = Set.Make(Int);;

module IntPair = 
  sig
  type t = int*int
  val compare: t→ t→ int
  end = 
	struct
	  type t = int*int
	  let compare = compare
  end;;

module Pset = Set.Make(IntPair);;
module Env = Map.Make(Int);;
(*
type position_t = None | Pos of int*int;;
type posenvironnement_t = position_t array;;
type objectenvironnement_t = ISet.t array;;
*)

(*--------------------------------------------*)

(* BASIC FUNCTION *)
(* Conversion of a sequence into a list *)
let seq_to_list seq = List.rev (Seq.fold_left (fun l e -> e::l) [] seq);;
let seq_of_list:'a list -> 'a Seq.t   = fun l -> (fun ()-> (List.fold_left (fun seq e -> Seq.Cons (e,fun()->seq)) Seq.Nil l));;

(* conversion of [ (i,(x,y)) ..] to environnement and reciprocally *)  
let env_of_list l = Env.of_seq (seq_of_list l);;
let env_to_list e = seq_to_list (Env.to_seq e);;

(* Domain  and co-domain of environnements of type  int -> (int*int) *) 
let codom env =  Env.fold (fun _ coord psset -> PSet.add coord psset) env PSet.empty;;
let dom env =  Env.fold ( fun key _ iset -> ISet.add key iset) env ISet.empty;;

(* Restriction of an environment from a set of integers *)
let restrict env iset = Env.filter (fun k _ -> ISet.mem k iset) env;;

let padd (x,y) (w,z) = (x+w,y+z);;

(*--------------------------------------------*)

(* Evaluation *)

let position dep =
	match dep with
	|Noth x -> (0,x)
	|South x -> (0,-x)
	|West x -> (-x,0)
	|East x -> (x,0);
; 

(* Evaluation of the identifier i or _ *)
let envid id env = 
match id with 
	|Int i -> try Env.singleton i (Env.find env) with Not_found -> Env.empty)
	|Any -> ennv
;;	

(* Evaluation of the element -> environnement *)
let element e (erobot, eobject, eobstacle) =
match e with
	| Robot id -> envid id erobot
	| Obstacle id -> envid id eobstacle
	| Object id -> envid id eobject 
;;

let rec condition cond ((erobot,eobject,eobstacle) as roov) = 
match cond with 
	|Cond (elt, dep) -> let d = position dep and elt = (element elt rovv ) in dom (Env.filter(fun _ pos -> PSet.mem (padd pos d) (codom elt))
	|And (c1,c2) -> ISet.inter (condition c1 roov) (condition c2 roov) 
	|Or (c1,c2) -> ISet.union (condition c1 roov) (condition c2 roov)
	|Not c -> ISet.diff (dom erobot) (condition c1 roov)
	|True -> dom erobot
;;


(* EXEMPLE *)

let l = [(1,(3,4));(2,(1,1));(3,(6,2));(4,(5,6))];;
let env = Env.of_seq (seq_of_list l);;

seq_to_list (Pset.to_seq (codom env));;

(*--------------------------------------------*)
open AstMRB;;

(* Printer *)
let printid id = 
match id with 
|Int i -> string_of_int i 
|Any ->"_";;

let  printelement e = 
match e with 
| Robot id -> "#"^(printid id) 
| Obstacle id -> "%"^(printid id) 
| Object id -> "$"^(printid id) 
;;

let printposition p = 
match p with 
|North i -> "N "^(string_of_int i)
|South i -> "S "^(string_of_int i)
|East i -> "E "^(string_of_int i)
|West i -> "W "^(string_of_int i);;

let rec printcondition c = 
match c with
| Cond (element,position) -> (printelement element)^"@"^(printposition position)
| And (c1,c2) -> (printcondition c1)^" && "^(printcondition c2)
| Or (c1,c2) -> (printcondition c1)^" || "^(printcondition c2)
| Not c -> " !"^(printcondition c);;

let printaction act = 
match act with
|Move p -> printposition p 
|Take id -> "["^(printid id)^"]";;

let rec printer prog =
match prog with
|[] -> "** end **"
|(condition,action)::statements -> (printcondition condition)^">>"^(printaction action)^";\n"^(printer statements)

(* open file *)
let chanin = open_in Sys.argv.(1) ;;

let (map,ast)=
try 
let lexbuf = Lexing.from_channel chanin in 
ParseMRB.program  LexMRB.token lexbuf (* Parsing *)
with (* error management*)
| Failure _   -> (print_endline "** Unrecognized character" ;([],[]))
| Parsing.Parse_error -> (print_endline "** Syntax error";([],[]))
| Not_found -> (print_endline "** Variable not found.";([],[]))
;;

print_endline (printer ast);;

