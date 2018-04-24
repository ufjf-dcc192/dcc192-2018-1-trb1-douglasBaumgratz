
<%@include file="../jspf/cabecalho.jspf" %>

<div class="container" style="margin-top:30px">            

    <h2>Adicionar Pedido</h2><br>       

    <form method="post">
        <div class="form-group">
            <label for="mesa">Número da Mesa:</label>
            <input type="text" class="form-control" placeholder="Enter number" name="numMesa">
        </div>                
        <button type="submit" class="btn btn-primary">Salvar</button>
        <button type="reset" class="btn btn-primary">Limpar</button>
    </form>
    <br><a href="ControlePedidos.html"><p>Voltar</p></a> 

</div>

<%@include file="../jspf/rodape.jspf" %>
