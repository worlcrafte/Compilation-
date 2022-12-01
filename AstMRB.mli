type move_t = North of int | South of int | East of int | West of int ;;
type identity_t = Int of int | Any;;
type element_t = Robot of identity_t | Object of identity_t  |Obstacle of identity_t;;
type action_t = Move of move_t | Take of identity_t  ;;
type condition_t = Cond of element_t*move_t | And of condition_t*condition_t | Or of condition_t*condition_t | Not of condition_t;;
type statement_t = condition_t*action_t;;
type mapping_t= element_t*(int*int);;