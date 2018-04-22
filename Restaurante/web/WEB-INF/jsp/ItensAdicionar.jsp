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
                <h1>Carrinho de compras</h1>
            </header>

            <form method="post" id="formulario">
                <label>Nome do produto: <input type="text" name="nome" value="" /> </label><br>
                <label>Quantidade:      <input type="text" name="quantidade" value="" /> </label><br>
                <label>Preço:           <input type="text" name="preco" value="" /> </label><br>            
                <input type="submit" value="Gravar" />
                <input type="reset" value="Limpar" />
            </form>        
            <a href="ControlePedidos.html"><p>Voltar para Controle de Pedidos</p></a>
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
