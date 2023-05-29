lexer grammar AlgumaLexer;

PALAVRA_CHAVE 
	:	'DECLARACOES' | 'ALGORITMO' | 'INTEIRO' | 'REAL' | 'ATRIBUIR' | 'A' | 'LER' | 'IMPRIMIR' | 'SE' | 'ENTAO' 
	| 'ENQUANTO' | 'INICIO' | 'FIM' | 'E' | 'OU' 
	; 

fragment Letra : 'a'..'z' | 'A'..'Z';
fragment Digito : '0'..'9';

COMENTARIO : '%' ~('\n' | '\r')* {skip();} ;
NUMINT	: ('+'|'-')?('0'..'9')+ ;
NUMREAL	: ('+'|'-')?('0'..'9')+ ('.' ('0'..'9')+)? ;
VARIAVEL : ('a'..'z'|'A'..'Z') ('a'..'z'|'A'..'Z'|'0'..'9')* ;
