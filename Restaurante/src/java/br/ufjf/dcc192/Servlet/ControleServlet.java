package br.ufjf.dcc192.Servlet;

import br.ufjf.dcc192.Dominio.ListaDePedidos;
import br.ufjf.dcc192.Dominio.Mesa;
import br.ufjf.dcc192.Dominio.Pedido;
import br.ufjf.dcc192.Dominio.Produto;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControlePedidos", urlPatterns = {"/ControlePedidos.html", "/AdicionarPedido.html", "/EncerrarPedido.html",
    "/ItensAdicionar.html", "/ItensSolicitados.html"})
public class ControleServlet extends HttpServlet {

    private RequestDispatcher despachante;
    private List<Pedido> pedidos = new ListaDePedidos().getInstance();
    private Mesa mesa;
    private List<Produto> produto;
    private Pedido pedido;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if ("/ControlePedidos.html".equals(request.getServletPath())) {
            doGetControlePedidos(request, response);
        } else if ("/ItensAdicionar.html".equals(request.getServletPath())) {
            doGetItensAdicionar(request, response);
        } else if ("/ItensSolicitados.html".equals(request.getServletPath())) {
            doGetItensSolicitados(request, response);
        } else if ("/EncerrarPedido.html".equals(request.getServletPath())) {
            encerrarPedido(request, response);
            doGetControlePedidos(request, response);
        } else if ("/AdicionarPedido.html".equals(request.getServletPath())) {
            doGetAdicionarPedido(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if ("/ItensAdicionar.html".equals(request.getServletPath())) {
            doPostItensAdicionar(request, response);
        } else if ("/AdicionarPedido.html".equals(request.getServletPath())) {
            doPostAdicionarPedido(request, response);
        }
        response.sendRedirect("ControlePedidos.html");
    }

    public void doGetControlePedidos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("pedido", pedidos);
        despachante = request.getRequestDispatcher("WEB-INF/jsp/PedidosSolicitados.jsp");
        despachante.forward(request, response);
    }

    private void encerrarPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        pedidos.get(id).encerrarPedidoNow();
    }

    private void doGetItensAdicionar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        if (pedidos.get(id).getSituacao() == false) {
            despachante = request.getRequestDispatcher("WEB-INF/jsp/ItensAdicionadosErro.jsp");
            despachante.forward(request, response);
        } else {
            mesa = pedidos.get(id).getMesa();
            request.setAttribute("mesa", mesa);
            despachante = request.getRequestDispatcher("WEB-INF/jsp/ItensAdicionar.jsp");
            despachante.forward(request, response);
        }
    }

    private void doGetItensSolicitados(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        produto = pedidos.get(id).getLista();
        mesa = pedidos.get(id).getMesa();
        pedido = pedidos.get(id);
        request.setAttribute("mesa", mesa);
        request.setAttribute("pedido", pedido);
        request.setAttribute("produto", produto);
        despachante = request.getRequestDispatcher("WEB-INF/jsp/ItensSolicitados.jsp");
        despachante.forward(request, response);
    }

    private void doGetAdicionarPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        despachante = request.getRequestDispatcher("WEB-INF/jsp/AdicionarPedido.jsp");
        despachante.forward(request, response);
    }

    private void doPostItensAdicionar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Produto produto;
        Integer id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("name");
        Integer quantidade = Integer.parseInt(request.getParameter("quantidade"));
        Double preco = Double.parseDouble(request.getParameter("preco"));
        produto = new Produto(nome, quantidade, preco);
        pedidos.get(id).getLista().add(produto);
        request.setAttribute("produto", pedidos.get(id).getLista());
    }

    private void doPostAdicionarPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer numMesa = Integer.parseInt(request.getParameter("numMesa"));
        ListaDePedidos.getInstance().add(new Pedido(new Mesa(numMesa)));
    }
}
