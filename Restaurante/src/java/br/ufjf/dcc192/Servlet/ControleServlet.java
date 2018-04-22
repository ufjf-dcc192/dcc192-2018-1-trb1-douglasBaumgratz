package br.ufjf.dcc192.Servlet;

import br.ufjf.dcc192.Dominio.ListaDePedidos;
import br.ufjf.dcc192.Dominio.Mesa;
import br.ufjf.dcc192.Dominio.Pedido;
import br.ufjf.dcc192.Dominio.Produto;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControlePedidos", urlPatterns = {"/ControlePedidos.html", "/AdicionarṔedido.html", "/EncerrarPedido.html",
    "/ItensAdicionar.html", "/ItensSolicitados.html", "/Muda-status.html"})
public class ControleServlet extends HttpServlet {

    RequestDispatcher despachante;
    List<Pedido> pedido = new ListaDePedidos().getInstance();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if ("/ItensAdicionar.html".equals(request.getServletPath())) {
            String nome = request.getParameter("nome");
            Integer quantidade = Integer.parseInt(request.getParameter("quantidade"));
            Double preco = Double.parseDouble(request.getParameter("preco"));
            Produto produto = new Produto(nome, quantidade, preco);
            Integer id = Integer.parseInt(request.getParameter("id"));
            List<Pedido> pedido = new ListaDePedidos().getInstance();
            pedido.get(id).getLista().add(produto);
            request.setAttribute("produto", pedido.get(id).getLista());
        }
        response.sendRedirect("ControlePedidos.html");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher despachante;
        if ("/ControlePedidos.html".equals(request.getServletPath())) {
            request.setAttribute("pedido", pedido);
            tabelaPedidos(request, response);
        } else if ("/ItensAdicionar.html".equals(request.getServletPath())) {
            Integer id = Integer.parseInt(request.getParameter("id"));
            if (pedido.get(id).getSituacao() == false) {
                despachante = request.getRequestDispatcher("WEB-INF/jsp/ItensAdicionadosErro.jsp");
                despachante.forward(request, response);
            } else {
                despachante = request.getRequestDispatcher("WEB-INF/jsp/ItensAdicionar.jsp");
                despachante.forward(request, response);
            }
        } else if ("/ItensSolicitados.html".equals(request.getServletPath())) {
            Integer id = Integer.parseInt(request.getParameter("id"));
            List<Produto> produto = pedido.get(id).getLista();
            request.setAttribute("produto", produto);
            despachante = request.getRequestDispatcher("WEB-INF/jsp/ItensSolicitados.jsp");
            despachante.forward(request, response);
        } else if ("/EncerrarPedido.html".equals(request.getServletPath())) {
            encerrarPedido(request, response);
            tabelaPedidos(request, response);
        }
    }

    public void tabelaPedidos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int total = 0;
        List<Integer> listaT = new ArrayList<>();
        for (int i = 0; i < ListaDePedidos.getInstance().size(); i++) {
            for (int j = 0; j < ListaDePedidos.getInstance().get(i).getLista().size(); j++) {
                Double preco = ListaDePedidos.getInstance().get(i).getLista().get(j).getPreco();
                Integer quantidade = ListaDePedidos.getInstance().get(i).getLista().get(j).getQuantidade();
                total += preco * quantidade;
            }
            listaT.add(total);
        }
        request.setAttribute("pedido", pedido);
        request.setAttribute("total", total);
        despachante = request.getRequestDispatcher("WEB-INF/jsp/PedidosSolicitados.jsp");
        despachante.forward(request, response);
    }

    private void encerrarPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        pedido.get(id).encerrarPedido();

    }

}
