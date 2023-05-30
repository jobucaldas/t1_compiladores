lexer grammar AlgumaLexer;

fragment Letra : 'a'..'z' | 'A'..'Z';
fragment Digito : '0'..'9';
fragment ESC_SEQ: '\\\'';

PALAVRA_CHAVE :	'tipo' | 'declare' | 'algoritmo' | 'fim_algoritmo' | 'registro' | 'fim_registro' | 'se' | 'senao' | 'fim_se' | ':' | ',' | '.' | '(' | ')' | 'leia' | 'escreva'; 
TYPES	:	'real' | 'literal' | 'inteiro';
OP_REL	:	'>' | '>=' | '<' | '<=' | '<>' | '=' | '<-';
OP_ARIT	:	'+' | '-' | '*' | '/' | '%';

COMENTARIO : '{' ~('}'|'\n'|'\r')* '}' {skip();} ;
WS : ( ' ' | '\t' | '\r' | '\n' ) {skip();} ;

NUMINT	: ('+'|'-')?('0'..'9')+ ;
NUMREAL	: ('+'|'-')?('0'..'9')+ ('.' ('0'..'9')+)? ;
IDENT : ('a'..'z'|'A'..'Z') ('a'..'z'|'A'..'Z'|'0'..'9')* ;

CADEIA : '"' (ESC_SEQ | ~('\n'|'"'|'\\'))* '"';

CADEIA_NAO_FECHADA: '"' (ESC_SEQ | ~('\n'|'"'|'\\'))* '\n';
COMENTARIO_NAO_FECHADO: '{' ~('}'|'\n'|'\r')* '\n';
SIMBOLO_NAO_RECONHECIDO: .;
