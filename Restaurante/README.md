# br.ufjf.dcc192

Relatório DCC192<br>
Aluno: Douglas Baumgratz de Carvalho<br>
Matrícula: 201276007<br>
Curso: Sistemas de Informação<br>


Introdução
==========
O Software foi modelado e desenvolvido baseado no cenário de uma empresa em que há a necessidade de fazer o controle dos protocolos contendo nome do setor, número do protocolo e um campo para saber se o protocolo foi consumido ou não, detalhando data e hora da utilização.


Modelo de dados utilizado
=========================
Foram 4 classes do domínio do problema
--------------------------------------
Classe Produto contendo nome, quantidade e preço;<br>
Classe Mesa contendo apenas o id da mesa;<br>
Classe Lista de Pedidos que retorna uma instancia de uma lista de Pedidos.

Foram criadas 6 páginas JSP
---------------------------
Página PedidosSolicitados que contém uma tabela apresentando todos pedidos cadastrados, com opções de fechar comanda, adicionar novo produto e visualizar itens adicionados;<br>
Página ItensSolicitados que contém uma tabela para apresentação detalhada de todos produtos do pedido;<br>
Página ItensAdicionar que contém um formulário para cadastrar um produto em determinada mesa;<br>
Página ItensAdicionadosErro, caso um pedido já esteja fechado, será direcionado a está página de erro;<br>
Página AdicionarPedidoErro, caso um pedido já esteja cadastrado, não poderá haver outro pedido para o mesmo nome de mesa, caso contrário será direcionado a está página de erro;<br>
Página AdicionarPedido que adiciona um novo pedido a comanda.

Foram criadas 2 páginas JSPF
----------------------------
Cabecalho e Rodapé para comporem o layout das páginas.

E uma classe de Controle Servlet
--------------------------------
	
Levantamento dos campos necessários para a construção das telas
===============================================================

Para construção das telas foi utilizado biblioteca de Front-End Boostrap.
Para construção das telas foi utilizado biblioteca de front-end Boostrap.


Pontos importantes sobre funcionamento da interface
===================================================

Para toda navegação do sistema é utilizado menu principal para voltar entre as páginas;<br>
A coluna Encerramento da tabela de pedidos é inicializada como null indicando que pedido está em aberto, ao clicar em fechar mesa é setado o horário de encerramento;<br>
Caso um pedido já esteja fechado, será direcionado a uma página de erro;<br>
Caso um pedido já esteja cadastrado com o mesmo nome de mesa de um pedido já existente, será direcionado a uma página de erro;


Discussão dos pontos que apresentaram maior dificuldade de implementação
========================================================================
A maior dificuldade de implementação foi em relação ao Front-End, que ao final foi solucionado com a utilização da biblioteca Boostrap.


Pontos onde podem ser realizadas melhorias futuras
==================================================

Implementação de JSTL;<br>
Persistência Banco de Dados;
