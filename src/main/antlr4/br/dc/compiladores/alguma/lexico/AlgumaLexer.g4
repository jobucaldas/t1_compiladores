lexer grammar AlgumaLexer;

fragment Letra : 'a'..'z' | 'A'..'Z';
fragment Digito : '0'..'9';
fragment ESC_SEQ: '\\\'';

PALAVRA_CHAVE :	'tipo' | 'declare' | 'algoritmo' | 'fim_algoritmo' | 'registro' | 'fim_registro' | 'se' | 'entao' | 'senao' | 'fim_se' | ':' | ',' | '.' | '..' | '(' | ')' | '[' | ']' | 'leia' | 'escreva' | 'caso' | 'fim_caso' | 'seja' | 'para' | 'ate' | 'faca' | 'fim_para' | 'enquanto' | 'fim_enquanto' | 'procedimento' | 'var' | 'fim_procedimento' | 'funcao' | 'fim_funcao' | 'retorne' | 'constante' | 'verdadeiro' | 'falso'; 
TYPES	:	'real' | 'literal' | 'inteiro' | 'logico';
OP_REL	:	'>' | '>=' | '<' | '<=' | '<>' | '=' | '<-';
OP_ARIT	:	'+' | '-' | '*' | '/' | '%' | '^' | 'e' | 'ou' | 'nao' | '&';

COMENTARIO : '{' ~('}'|'\n'|'\r')* '}' {skip();} ;
WS : ( ' ' | '\t' | '\r' | '\n' ) {skip();} ;

NUM_INT	: ('+')?('0'..'9')+ ;
NUM_REAL	: ('+')?('0'..'9')+ ('.' ('0'..'9')+)? ;
IDENT : ('a'..'z'|'A'..'Z') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')* ;

CADEIA : '"' (ESC_SEQ | ~('\n'|'"'|'\\'))* '"';

CADEIA_NAO_FECHADA: '"' (ESC_SEQ | ~('\n'|'"'|'\\'))* '\n';
COMENTARIO_NAO_FECHADO: '{' ~('}'|'\n'|'\r')* '\n';
SIMBOLO_NAO_RECONHECIDO: .;
