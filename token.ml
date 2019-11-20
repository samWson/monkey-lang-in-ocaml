(* token.ml *)

type token_type =
  | Illegal
  | EOF
  | Ident
  | Int
  | Assign
  | Plus
  | Comma
  | Semicolon
  | LParen
  | RParen
  | LBrace
  | RBrace
  | Function
  | Let

type token = {token_type: token_type; literal: string}
