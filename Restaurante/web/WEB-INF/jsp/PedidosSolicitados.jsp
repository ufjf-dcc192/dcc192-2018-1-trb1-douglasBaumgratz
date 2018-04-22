<%@page import="br.ufjf.dcc192.Dominio.Mesa"%>
<%@page import="br.ufjf.dcc192.Dominio.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="br.ufjf.dcc192.Dominio.Produto"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="WEB-INF/css/estilos.css" type="text/css"> 
    </head>
    <body>
        <div class="paginaHome">
            <header>
                <h1>Pedidos Solicitados</h1>
            </header>
            <section>
                <nav>
                    <table border = 1>
                        <th>Mesa</th>
                        <th>Situação</th>
                        <th>Abertura</th>
                        <th>Encerramento</th>
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
                            <td><a href="ItensSolicitados.html?id=<%=i%>">----Visualizar----</a></td>
                            <td><a href="ItensAdicionar.html?id=<%=i%>">----Adicionar----</a></td>
                            <td><a href="EncerrarPedido.html?id=<%=i%>"><label>----Fechar Mesa----</label></a></td>
                        </tr>
                        <%
                                i++;
                            }
                        %>            
                    </table>
                    <a href="index.html"><p>Voltar Menu</p></a>
                </nav>
                <div class ="paginaCentral">

                </div>
            </section>
            <footer>
                
            </footer>
        </div>
    </body>
</html>
