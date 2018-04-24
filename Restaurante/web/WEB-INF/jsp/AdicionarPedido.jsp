<%@include file="../jspf/cabecalho.jspf" %>

<div class="container" style="margin-top:30px">            
    <div class="text-center">
        <h2>Cadastro de Pedido</h2><br>       
    </div>
    <form method="post">
        <div class="form-control">
        <div class="form-group">
            <label for="mesa">Número da Mesa:</label>
            <input type="text" class="form-control" placeholder="Digite o número" name="numMesa">
        </div>      
        </div><br>
        <button type="submit" class="btn btn-primary">Salvar</button>
        <button type="reset" class="btn btn-primary">Limpar</button>
    </form><br>

    <div class="alert alert-danger alert-dismissible fade show">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Perigo!</strong> Verifique se a mesa está disponível!
    </div><br> 
</div>

<%@include file="../jspf/rodape.jspf" %>
