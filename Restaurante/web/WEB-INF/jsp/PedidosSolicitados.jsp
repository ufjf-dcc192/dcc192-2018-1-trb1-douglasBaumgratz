<%@page import="br.ufjf.dcc192.Dominio.Mesa"%>
<%@page import="br.ufjf.dcc192.Dominio.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="br.ufjf.dcc192.Dominio.Produto"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap 4 Website Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        <style>
            .fakeimg {
                height: 200px;
                background: #aaa;
            }
        </style>
    </head>
    <body>

        <div class="jumbotron text-center" style="margin-bottom:0">
            <h1>Bar&Restaurante</h1>        
        </div>

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="#">Controle de Pedidos</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="AdicionarPedido.html">Adicionar Pedido</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ControlePedidos.html">Pedidos</a>
                    </li>   
                </ul>
            </div>  
        </nav>

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
                        int i = 0;
                        for (Pedido pedido : (List<Pedido>) request.getAttribute("pedido")) {
                    %>  
                <tr>                
                    <td><%=pedido.getMesa().getId()%></td>
                    <td><%=pedido.getSituacao()%></a></td>
                    <td><%=pedido.getHorarioAbertura()%></td>
                    <td><%=pedido.getHorarioEncerramento()%></td>  
                    <td><label>R$:<%=pedido.getTotal()%></label></td>    
                    <td><a href="ItensSolicitados.html?id=<%=pedido.getMesa().getId() - 1%>">Visualizar</a></td>
                    <td><a href="ItensAdicionar.html?id=<%=pedido.getMesa().getId() - 1%>">Adicionar</a></td>
                    <td><a href="EncerrarPedido.html?id=<%=pedido.getMesa().getId() - 1%>"><label>Fechar Mesa</label></a></td>
                </tr>
                <%
                        i++;
                    }
                %>        
            </table>                 
        </div>

        <div class="jumbotron text-center" style="margin-bottom:0">
            Desenvolvido por: Douglas Baumgratz de Carvalho<br>
            Sistemas de Informação - UFJF
        </div>

    </body>
</html>
