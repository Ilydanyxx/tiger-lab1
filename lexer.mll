{
(* Початок OCaml-коду *)
open Printf
}

rule tokenize = parse
  | [' ' '\t' '\r' '\n']   { tokenize lexbuf }  (* Пропустити пробіли *)
  | "print"                { printf "KEYWORD: print\n"; tokenize lexbuf }
  | "\"" [^'"']* "\""      { printf "STRING\n"; tokenize lexbuf }
  | '(' | ')' | ';'        { printf "SYMBOL: %s\n" (Lexing.lexeme lexbuf); tokenize lexbuf }
  | eof                    { printf "EOF\n" }
  | _                      { printf "UNKNOWN: %s\n" (Lexing.lexeme lexbuf); tokenize lexbuf }
