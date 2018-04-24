
<%@include file="../jspf/cabecalho.jspf" %>

<div class="container" style="margin-top:30px">            
  
   <h2>Adicionar Pedido</h2><br>       
   
    <form method="post">
        <div class="form-group">
            <label for="mesa">N�mero da Mesa:</label>
            <input type="text" class="form-control" placeholder="Digite o n�mero" name="numMesa">
        </div>                
        <button type="submit" class="btn btn-primary">Salvar</button>
        <button type="reset" class="btn btn-primary">Limpar</button>
    </form><br>
   
     <div class="alert alert-danger alert-dismissible fade show">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Danger!</strong> Verifique se a mesa est� dispon�vel!
    </div> 
   
    <br><a href="ControlePedidos.html"><p>Voltar</p></a> 

</div>

<%@include file="../jspf/rodape.jspf" %>
