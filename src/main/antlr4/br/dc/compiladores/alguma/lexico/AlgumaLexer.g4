lexer grammar AlgumaLexer;

fragment Letra : 'a'..'z' | 'A'..'Z';
fragment Digito : '0'..'9';

PALAVRA_CHAVE :	'tipo' | 'declare' | 'algoritmo' | 'fim_algoritmo' | 'registro' | 'fim_registro' | 'se' | 'senao' | 'fim_se' | ':' | ',' | '.' | '(' | ')'; 
TYPES	:	'real' | 'literal' ;
OP_REL	:	'>' | '>=' | '<' | '<=' | '<>' | '=' ;
OP_ARIT	:	'+' | '-' | '*' | '/' ;

COMENTARIO : '{' ~('}')* '}' {skip();} ;
WS : ( ' ' | '\t' | '\r' | '\n' ) {skip();} ;

NUMINT	: ('+'|'-')?('0'..'9')+ ;
NUMREAL	: ('+'|'-')?('0'..'9')+ ('.' ('0'..'9')+)? ;
VARIAVEL : ('a'..'z'|'A'..'Z') ('a'..'z'|'A'..'Z'|'0'..'9')* ;

EX_STRING : '"' ~('\n')* ;
CADEIA : '"' ~('"')* '"' ;
