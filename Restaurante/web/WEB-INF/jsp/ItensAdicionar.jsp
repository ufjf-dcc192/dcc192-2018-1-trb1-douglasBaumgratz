<%@page import="br.ufjf.dcc192.Dominio.Mesa"%>
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
            <a class="navbar-brand" href="#">Controle de Comandas</a>
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
            <%
                Mesa mesa = (Mesa) request.getAttribute("mesa");
            %>
            <h2>Inserir produto Mesa número: <%=mesa.getId()%></h2><br>       

            <form method="post">
                <div class="form-group">
                    <label for="email">Nome do produto:</label>
                    <input type="text" class="form-control" placeholder="Enter name" name="name">
                </div>
                <div class="form-group">
                    <label for="pwd">Quantidade:</label>
                    <input type="text" class="form-control" placeholder="Enter quantidade" name="quantidade">
                </div>
                <div class="form-group">
                    <label for="pwd">Preço:</label>
                    <input type="text" class="form-control" placeholder="Enter preço" name="preco">
                </div>
                <button type="submit" class="btn btn-primary">Salvar</button>
                <button type="reset" class="btn btn-primary">Limpar</button>
            </form>
            <br><a href="ControlePedidos.html"><p>Voltar</p></a>
        </div>            
    </div>

    <div class="jumbotron text-center" style="margin-bottom:0">
        Desenvolvido por: Douglas Baumgratz de Carvalho<br>
        Sistemas de Informação - UFJF
    </div>


</body>
</html>
