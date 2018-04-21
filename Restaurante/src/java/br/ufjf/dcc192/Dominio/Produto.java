package br.ufjf.dcc192.Dominio;

/**
 *
 * @author douglas
 */
public class Produto {
    String nome;

    public Produto(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
        return "produtos{" + "nome=" + nome + '}';
    }
    
    
}
