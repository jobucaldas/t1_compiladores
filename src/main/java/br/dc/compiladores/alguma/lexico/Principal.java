package br.dc.compiladores.alguma.lexico;

import java.io.IOException;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.Token;

import java.io.PrintWriter;

public class Principal {
    public static void main(String args[]) {
        String arquivoSaida = args[1];

        try(PrintWriter pw = new PrintWriter(arquivoSaida)) {
            CharStream cs = CharStreams.fromFileName(args[0]);

            AlgumaLexer lex = new AlgumaLexer(cs);

            while (lex.nextToken().getType() != Token.EOF) {
                pw.println("");
            }
        } catch(IOException ex) {
            System.err.println("O arquivo/diretório não existe:"+args[1]);
        }
    }
}
