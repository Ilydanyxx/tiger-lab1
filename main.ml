let () =
  let filename = "src/hello.tig" in
  let ch = open_in filename in
  let lexbuf = Lexing.from_channel ch in
  Lexer.tokenize lexbuf
