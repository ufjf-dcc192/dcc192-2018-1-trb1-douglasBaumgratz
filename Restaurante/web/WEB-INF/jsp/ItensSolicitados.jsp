<%@page import="java.util.List"%>
<%@page import="br.ufjf.dcc192.Dominio.Produto"%>
<%@page import="br.ufjf.dcc192.Dominio.Pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Itens Solicitados</h1>
        <%
            int i = 0;
            for (Produto produto : (List<Produto>) request.getAttribute("produto")) {
        %>   
        <ul>            
            <li><%=produto.getNome()%></li>       
        </ul>
        <%
            }
        %>
        <a href="ControlePedidos.html"><p>Voltar para Controle de Pedidos</p></a>
    </body>
</html>
