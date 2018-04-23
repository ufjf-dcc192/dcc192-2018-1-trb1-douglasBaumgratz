<%@page import="br.ufjf.dcc192.Dominio.Mesa"%>
<%@page import="br.ufjf.dcc192.Dominio.Mesa"%>
<%@page import="java.util.List"%>
<%@page import="br.ufjf.dcc192.Dominio.Produto"%>
<%@page import="br.ufjf.dcc192.Dominio.Pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilo.css" type="text/css"> 
    </head>
    <body>
        <div id="paginaHome">
            <header>
                <h1>Bar&Restaurante</h1>      
            </header>
            <div id="paginaCentral">
                <br>
                <%
                    Mesa mesa = (Mesa) request.getAttribute("mesa");
                %>
                <h1>Lista de Consumo Mesa número: <%=mesa.getId()%></h1>  
                
                <table border = 1 id="tabela">
                    <th>Nome</th>
                    <th>Quantidade</th>
                    <th>Preço</th>
                    <tr>
                        <%
                            int i = 0;
                            for (Produto produto : (List<Produto>) request.getAttribute("produto")) {
                        %>   
                        <td><%=produto.getNome()%></td>
                        <td><%=produto.getQuantidade()%></td>
                        <td><%=produto.getPreco()%></td>        
                    </tr>
                    <%
                        }
                    %>
                </table>
                <br><br><br><br><br><br><br><br><br><br><br><br>
                <a href="ControlePedidos.html" id="voltarMenu"><p>Voltar para Controle de Pedidos</p></a>
            </div>
        </div>
        <div id="paginaFinal">
            <footer>                    
                Desenvolvido por: Douglas Baumgratz de Carvalho<br>
                Sistemas de Informação - UFJF
                <br>
            </footer>
        </div>
    </body>
</html>
