package br.ufjf.dcc192.Dominio;

import java.util.ArrayList;
import java.util.List;

public class ListaDePedidos {

    private static List<Pedido> pedidos;

    public static List<Pedido> getInstance() {

        if (pedidos == null) {
            pedidos = new ArrayList<>();
            
            Mesa m1 = new Mesa(1);
            Mesa m2 = new Mesa(2);
            Mesa m3 = new Mesa(3);
            
            Pedido pedido1 = new Pedido(m1);
            Pedido pedido2 = new Pedido(m2);
            Pedido pedido3 = new Pedido(m3);

            pedido1.addLista(new Produto("Refrigerante", 2, 4.0));
            pedido1.addLista(new Produto("Cerveja", 5, 5.0));

            pedido2.addLista(new Produto("Dose de Wisk", 3, 10.0));
            pedido2.addLista(new Produto("Porção Carne e Bacon", 1, 30.0));
            pedido2.addLista(new Produto("Porção Batata Frita", 2, 15.0));

            pedido3.addLista(new Produto("Suco de Limão", 2, 4.5));
            pedido3.addLista(new Produto("Agua Mineral", 3, 2.0));
            pedido3.addLista(new Produto("Chiclete", 5, 0.25));
            pedido3.addLista(new Produto("Chocolate", 1, 2.0));

            pedidos.add(pedido1);
            pedidos.add(pedido2);
            pedidos.add(pedido3);

        }
        return pedidos;

    }

}
