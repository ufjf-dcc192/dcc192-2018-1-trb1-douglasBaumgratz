package br.ufjf.dcc192.Dominio;

import java.util.ArrayList;
import java.util.List;

public class ListaDePedidos {

    private static List<Pedido> pedidos;

    public static List<Pedido> getInstance() {

        Mesa m1 = new Mesa(1);
        Mesa m2 = new Mesa(2);
        Mesa m3 = new Mesa(3);
        Mesa m4 = new Mesa(4);
        Mesa m5 = new Mesa(5);

        if (pedidos == null) {
            pedidos = new ArrayList<>();
            pedidos.add(new Pedido(m1));
            pedidos.add(new Pedido(m2));
            pedidos.add(new Pedido(m3));
            pedidos.add(new Pedido(m4));
            pedidos.add(new Pedido(m5));
        }
        return pedidos;

    }

}
