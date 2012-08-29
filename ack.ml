
let rec ack (m, n) =
  match (m, n) with
  | (0, _) -> n + 1
  | (_, 0) -> ack (m-1, 1)
  | (_, _) -> ack (m-1, ack (m, n-1)) ;;


(*
Printf.printf "A(1, 1) = %d" (ack (1, 1)) ;;
Printf.printf "A(2, 2) = %d" (ack (2, 2)) ;;
Printf.printf "A(4, 0) = %d" (ack (4, 0)) ;;
Printf.printf "A(3, 1) = %d" (ack (3, 1)) ;;
Printf.printf "A(3, 4) = %d" (ack (3, 4)) ;;
*)

Printf.printf "A(4, 1) = %d" (ack (4, 1)) ;;

(*
Printf.printf "A(4, 2) = %d" (ack (4, 2)) ;;

Printf.printf "A(4, 3) = %d" (ack (4, 3)) ;;

Printf.printf "A(4, 4) = %d" (ack (4, 4)) ;;

Printf.printf "A(5, 2) = %d" (ack (5, 2)) ;;
*)

