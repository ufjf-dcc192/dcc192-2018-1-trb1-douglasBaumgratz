<%@page import="br.ufjf.dcc192.Dominio.Mesa"%>
<%@page import="br.ufjf.dcc192.Dominio.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="br.ufjf.dcc192.Dominio.Produto"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mercearia - Pais e Filhos</title>        
        <link rel="stylesheet" href="estilo.css" type="text/css"> 
    </head>
    <body>
        <div id="paginaBorda">
            <div id="paginaHome">
                <header>                
                    <h1>Bar&Restaurante</h1>                   
                </header>
                <section>
                    <nav>                    
                        <h1> &nbsp &nbsp M e n u </h1>
                        <ul id="menu">
                            <li><a href='AdicionarPedido.html'>Adicionar Pedido</a></li>  
                            <li><a href='ControlePedidos.html'>Controle de Pedidos</a></li>                        
                        </ul>                                   
                    </nav>               
                    <div id="paginaCentral">   
                        <br>
                        <h1>Pedidos</h1>
                        <br>
                        <table border = 1 id="tabela">
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
                                <td><a href="ItensSolicitados.html?id=<%=i%>">----Visualizar----</a></td>
                                <td><a href="ItensAdicionar.html?id=<%=i%>">----Adicionar----</a></td>
                                <td><a href="EncerrarPedido.html?id=<%=i%>"><label>----Fechar Mesa----</label></a></td>
                            </tr>
                            <%
                                    i++;
                                }
                            %>            
                        </table>     
                        <br><br><br><br><br><br><br><br><br><br><br><br>
                        <a href="index.html" id="voltarMenu"><p>Voltar</p></a>
                    </div>
                </section>
            </div>
            <div id="paginaFinal">
                <footer>                    
                    Desenvolvido por: Douglas Baumgratz de Carvalho<br>
                    Sistemas de Informação - UFJF
                    <br>
                </footer>
            </div> 
        </div>
    </body>
</html>
