# br.ufjf.dcc192

Relatório DCC192<br>
Aluno: Douglas Baumgratz de Carvalho<br>
Matrícula: 201276007<br>
Curso: Sistemas de Informação<br>



Relatório Bar & Restaurante
===========================

Introdução
----------

####O Software foi modelado e desenvolvido baseado no cenário de uma empresa em que há a necessidade de fazer o controle dos protocolos contendo nome do setor, número do protocolo e um campo para saber se o protocolo foi consumido ou não, detalhando data e hora da utilização.

Modelo de dados utilizado
-------------------------

#### H4 Foram 4 classes do domínio do problema;<br>
    - Classe Pedido para representar uma comanda com id da mesa, hora abertura, hora fechamando, situação e um array de lista de produtos;<br>
	- Classe Produto contendo nome, quantidade e preço;<br>
	- Classe Mesa contendo apenas o id da mesa;<br>
	- Classe Lista de Pedidos que retorna uma instancia de uma lista de Pedidos.<br>

####Foram criadas 6 páginas JSP;H4<br>
	Página PedidosSolicitados que contém uma tabela apresentando todos pedidos cadastrados, com opções de fechar comanda, adicionar novo produto e visualizar itens adicionados;
	Página ItensSolicitados que contém uma tabela para apresentação detalhada de todos produtos do pedido;
	Página ItensAdicionar que contém um formulário para cadastrar um produto em determinada mesa;
	Página ItensAdicionadosErro, caso um pedido já esteja fechado, será direcionado a está página de erro;
	Página AdicionarPedidoErro, caso um pedido já esteja cadastrado, não poderá haver outro pedido para o mesmo nome de mesa, caso contrário será direcionado a está página de erro;
	Página AdicionarPedido que adiciona um novo pedido a comanda.

	
Levantamento dos campos necessários para a construção das telas
---------------------------------------------------------------




Pontos importantes sobre funcionamento da interface
----------------------------------------------------------------------




Discussão dos pontos que apresentaram maior dificuldade de implementação
------------------------------------------------------------------------




Pontos onde podem ser realizadas melhorias futuras
--------------------------------------------------
