<%@page import="br.ufjf.dcc192.Dominio.Mesa"%>
<%@page import="br.ufjf.dcc192.Dominio.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="br.ufjf.dcc192.Dominio.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../jspf/cabecalho.jspf" %>

<div class="container" style="margin-top:30px">
    <table border = 1 class="table table-dark table-striped">
        <th>Mesa</th>
        <th>Situação</th>
        <th>Abertura</th>
        <th>Encerramento</th>
        <th>Total Pedido</th>
        <th>Itens Solicitados</th>
        <th>Add Produto</th>
        <th>Fechar Pedido</th>  
            <%
                for (Pedido pedido : (List<Pedido>) request.getAttribute("pedido")) {
            %>  
        <tr>                
            <td><%=pedido.getMesa().getId()%></td>
            <td><%=((pedido.getSituacao()) ? "Aberto" : "Fechado")%></a></td>            
            <td><%=pedido.getHorarioAbertura()%></td>
            <td><%=pedido.getHorarioEncerramento()%></td>  
            <td><label>R$:<%=pedido.getTotal()%></label></td>    
            <td><a href="ItensSolicitados.html?id=<%=pedido.getMesa().getId() - 1%>">Visualizar</a></td>
            <td><a href="ItensAdicionar.html?id=<%=pedido.getMesa().getId() - 1%>">Adicionar</a></td>
            <td><a href="EncerrarPedido.html?id=<%=pedido.getMesa().getId() - 1%>"><label>Fechar Mesa</label></a></td>
        </tr>
        <%
            }
        %>        
    </table>                 
</div>

<%@include file="../jspf/rodape.jspf" %>