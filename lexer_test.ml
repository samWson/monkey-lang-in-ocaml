open OUnit2
open Token

let source_code = "=+(){},;"

let expected_tokens =
  [
    {token_type = Token.Assign; literal = "="};
    {token_type = Token.Plus; literal = "+"};
    {token_type = Token.LParen; literal = "(" };
    {token_type = Token.RParen; literal = ")"};
    {token_type = Token.LBrace; literal = "{"};
    {token_type = Token.RBrace; literal = "}"};
    {token_type = Token.Comma; literal = ","};
    {token_type = Token.Semicolon; literal = ";"};
    {token_type = Token.EOF; literal = ""};
  ]

let test_context = "tokenizing" >:::
  [
    "creates a list of tokens" >:: ( fun _ ->
      assert_equal (Lexer.tokenize source_code) expected_tokens
    )
  ]

let () = run_test_tt test_context
