<%@page import="br.ufjf.dcc192.Dominio.Mesa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../jspf/cabecalho.jspf" %>

<div class="container" style="margin-top:30px">            
    <%
        Mesa mesa = (Mesa) request.getAttribute("mesa");
    %>
    <h2>Inserir produto Mesa número: <%=mesa.getId()%></h2><br>       

    <form method="post">
        <div class="form-group">
            <label for="email">Nome do produto:</label>
            <input type="text" class="form-control" placeholder="Digite o nome" name="name">
        </div>
        <div class="form-group">
            <label for="pwd">Quantidade:</label>
            <input type="text" class="form-control" placeholder="Digite a quantidade" name="quantidade">
        </div>
        <div class="form-group">
            <label for="pwd">Preço:</label>
            <input type="text" class="form-control" placeholder="Digite o preço" name="preco">
        </div>
        <button type="submit" class="btn btn-primary">Salvar</button>
        <button type="reset" class="btn btn-primary">Limpar</button>
    </form>
    <br><a href="ControlePedidos.html"><p>Voltar</p></a>
</div>            
</div>

<%@include file="../jspf/rodape.jspf" %>