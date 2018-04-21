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
       lista = ListaDeProduto.getInstance();
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

}
