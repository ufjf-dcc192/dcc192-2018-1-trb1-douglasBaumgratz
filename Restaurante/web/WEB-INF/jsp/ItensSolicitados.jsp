<%@page import="br.ufjf.dcc192.Dominio.Mesa"%>
<%@page import="java.util.List"%>
<%@page import="br.ufjf.dcc192.Dominio.Produto"%>
<%@page import="br.ufjf.dcc192.Dominio.Pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../jspf/cabecalho.jspf" %>

<div class="container" style="margin-top:30px">
    <%
        Mesa mesa = (Mesa) request.getAttribute("mesa");
    %>
    <div class="text-center">
        <h2>Lista de Consumo Mesa número: <%=mesa.getId()%></h2><br>
    </div>
    <table border = 1 class="table table-dark table-striped" >
        <th>Nome</th>
        <th>Quantidade</th>
        <th>Preço</th>                    
        <tr>                    
            <%
                int i = 0;
                Pedido pedido = (Pedido) request.getAttribute("pedido");
                for (Produto produto : (List<Produto>) request.getAttribute("produto")) {
            %>   
            <td><%=produto.getNome()%></td>
            <td><%=produto.getQuantidade()%></td>
            <td><%=produto.getPreco()%></td>                                
        </tr>
        <%
            }
        %>
        <tr>
            <td>Total a pagar:</td>
            <td colspan="2">R$<%=pedido.getTotal()%></td>
        </tr>
    </table><br>
    <div class="alert alert-info text-center">
        <strong>Informação!</strong> Utilize o menu para navegação
    </div><br>
</div>

<%@include file="../jspf/rodape.jspf" %>