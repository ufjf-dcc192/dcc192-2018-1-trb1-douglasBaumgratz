package br.ufjf.dcc192;

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

@WebServlet(name = "ControlePedidos", urlPatterns = {"/ControlePedidos.html", "/EncerrarPedido.html",
    "/ItensAdicionar.html", "/ItensSolicitados.html", "/Muda-status.html"})
public class ControlePedidos extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if ("/ItensAdicionar.html".equals(request.getServletPath())) {
            String nome = request.getParameter("nome");
            Produto produto = new Produto(nome);
            Integer id = Integer.parseInt(request.getParameter("id"));
            List<Pedido> pedido = new ListaDePedidos().getInstance();

            pedido.get(id).getLista().add(produto);
            request.setAttribute("produto", pedido.get(id).getLista());
        }
        response.sendRedirect("ControlePedidos.html");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pedido> pedido = new ListaDePedidos().getInstance();
        if ("/ControlePedidos.html".equals(request.getServletPath())) {
            request.setAttribute("pedido", pedido);
            RequestDispatcher despachante = request.getRequestDispatcher("WEB-INF/PedidosSolicitados.jsp");
            despachante.forward(request, response);
        } else if ("/ItensAdicionar.html".equals(request.getServletPath())) {
            Integer id = Integer.parseInt(request.getParameter("id"));
            if (pedido.get(id).getSituacao() == false) {
                RequestDispatcher despachante = request.getRequestDispatcher("WEB-INF/ItensAdicionadosErro.jsp");
                despachante.forward(request, response);
            } else {
                RequestDispatcher despachante = request.getRequestDispatcher("WEB-INF/ItensAdicionar.jsp");
                despachante.forward(request, response);
            }
        } else if ("/ItensSolicitados.html".equals(request.getServletPath())) {
            Integer id = Integer.parseInt(request.getParameter("id"));
            List<Produto> produto = pedido.get(id).getLista();
            request.setAttribute("produto", produto);
            RequestDispatcher despachante = request.getRequestDispatcher("WEB-INF/ItensSolicitados.jsp");
            despachante.forward(request, response);
        } else if ("/EncerrarPedido.html".equals(request.getServletPath())) {
            encerrarPedido(request, response);
            request.setAttribute("pedido", pedido);
            RequestDispatcher despachante = request.getRequestDispatcher("WEB-INF/PedidosSolicitados.jsp");
            despachante.forward(request, response);
        }
    }

    private void encerrarPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        ListaDePedidos.getInstance().get(id).encerrarPedido();

    }

//    public void mudaStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<Pedido> pedido = new ListaDePedidos().getInstance();
//        request.setAttribute("pedido", pedido);
//        Pedido pedidos = new Pedido(ListaDePedidos.getInstance().get(Integer.parseInt(request.getParameter("id"))).getMesa());
//        if (!ListaDePedidos.getInstance().get(Integer.parseInt(request.getParameter("id"))).getSituacao()) {
//            pedidos.setSituacao(true);
//        } else {
//            pedidos.setSituacao(false);
//        }
//        ListaDePedidos.getInstance().set(Integer.parseInt(request.getParameter("id")), pedidos);
//    }
}
