package br.ufjf.dcc192.Dominio;
import java.util.ArrayList;
import java.util.List;


public class ListaDeProduto {
    private static List<Produto> itens;
    
    public static List<Produto> getInstance() {
        if (itens == null) {
            itens = new ArrayList<>();
            itens.add(new Produto("Shampoo"));
            itens.add(new Produto("Desodorante"));
            itens.add(new Produto("Papel Toalha"));
            itens.add(new Produto("Sabão em pó"));
            itens.add(new Produto("Copo"));
        }
        return itens;
    }
}
