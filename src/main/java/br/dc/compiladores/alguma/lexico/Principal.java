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

            Token t = null;
            // Itera todos os tokens
            while ((t = lex.nextToken()).getType() != Token.EOF) {
                if((AlgumaLexer.VOCABULARY.getDisplayName(t.getType()) == "OP_REL")
                 | (AlgumaLexer.VOCABULARY.getDisplayName(t.getType()) == "OP_ARIT")
                 | (AlgumaLexer.VOCABULARY.getDisplayName(t.getType()) == "PALAVRA_CHAVE")
                 | (AlgumaLexer.VOCABULARY.getDisplayName(t.getType()) == "TYPES"))
                {
                    pw.println("<'" + t.getText() + "','" + t.getText() + "'>");
                } else{
                    pw.println("<'" + t.getText() + "'," + AlgumaLexer.VOCABULARY.getDisplayName(t.getType()) + ">");
                }
            }

            // while (lex.nextToken().getType() != Token.EOF) {
            //     pw.println("");
            // }
        } catch(IOException ex) {
            System.err.println("Problema ao abrir o arquivo '" + args[1] + "'");
            System.err.println("Erro: " + ex.getLocalizedMessage());
        }
    }
}
