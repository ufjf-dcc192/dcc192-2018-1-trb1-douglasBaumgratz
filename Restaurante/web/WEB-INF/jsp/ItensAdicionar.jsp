<%@page import="br.ufjf.dcc192.Dominio.Mesa"%>
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
                <h1>Inserir produto <br>
                    Mesa número: <%=mesa.getId()%></h1>  
                <br>                
                <br>  
                <form method="post" id="formulario">
                    <label>Nome do produto:&nbsp <input type="text" name="nome" value="" /> </label><br>
                    <label>Quantidade:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="quantidade" value="" /> </label><br>
                    <label>Preço: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input type="text" name="preco" value="" /> </label><br>            
                    <br> 
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Salvar" />
                </form>        
                <br><br><br><br><br><br><br><br><br><br>                
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
