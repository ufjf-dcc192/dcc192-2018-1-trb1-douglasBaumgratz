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

    public Pedido(Mesa mesa) {
        lista.add(new Produto("Shampoo", 2, 12.5));
        lista.add(new Produto("Desodorante", 1, 10.0));
        lista.add(new Produto("Papel Toalha", 3, 1.0));
        lista.add(new Produto("Sabão em pó", 1, 15.0));
        lista.add(new Produto("Copo", 5, 1.0));
        //lista = ListaDeProduto.getInstance();
        this.mesa = mesa;
        this.situacao = true;
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

    public void encerrarPedido() {
        this.horarioEncerramento = Time.valueOf(LocalTime.now()); //seto horário de encerramento com base no horário atual        
        this.situacao = false; //altera situação pedido para false(encerrado);
    }

    public Double getTotal() {
        Double total = 0.0;

        for (int i = 0; i < lista.size(); i++) {
            total += lista.get(i).getQuantidade() * lista.get(i).getPreco();
        }
        return total;
    }
}
