package br.ufjf.dcc192.Dominio;

import java.sql.Time;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

public class Pedido {
    
    Mesa mesa;
    Boolean situacao;
    Time horarioAbertura;
    Time horarioEncerramento;
    List<Produto> lista = new ArrayList<>();
    static final Boolean PEDIDOENCERRADO = false;
    static final Boolean PEDIDOABERTO = true;
    
    public Pedido(Mesa mesa) {
        lista.add(new Produto("Cerveja", 2, 5.0));
        lista.add(new Produto("Porção Torresmo", 1, 4.0));
        lista.add(new Produto("Porção Batata Frita com Queijo", 3, 10.0));
        lista.add(new Produto("Almoço mais Refrigerante(500ml)", 1, 15.0));
        lista.add(new Produto("Dose de Capirinha", 5, 4.0));        
        this.mesa = mesa;
        this.situacao = PEDIDOABERTO;
        horarioAbertura = Time.valueOf(LocalTime.now());
        horarioEncerramento = null;
    }

    public void addLista(Produto p) {
        this.lista.add(p);
    }

    public List<Produto> getLista() {
        return lista;
    }

    public void setLista(List<Produto> lista) {
        this.lista = lista;
    }

    public void setSituacao(Boolean situacao) {
        this.situacao = situacao;
    }

    public Mesa getMesa() {
        return mesa;
    }

    public Time getHorarioAbertura() {
        return horarioAbertura;
    }

    public Time getHorarioEncerramento() {
        return horarioEncerramento;
    }

    public Boolean getSituacao() {
        return situacao;
    }

    public void encerrarPedidoNow() {
        this.horarioEncerramento = Time.valueOf(LocalTime.now()); //seto horário de encerramento com base no horário atual        
        this.situacao = PEDIDOENCERRADO; //altera situação pedido para false(encerrado);
    }

    public Double getTotal() {
        Double total = 0.0;

        for (int i = 0; i < lista.size(); i++) {
            total += lista.get(i).getQuantidade() * lista.get(i).getPreco();
        }
        return total;
    }
}
