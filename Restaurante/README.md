# br.ufjf.dcc192

Relatório DCC192<br>
Aluno: Douglas Baumgratz de Carvalho<br>
Matrícula: 201276007<br>
Curso: Sistemas de Informação<br>

<p> 
	O Software foi modelado e desenvolvido baseado no cenário de uma empresa em que há a necessidade de fazer o controle dos protocolos contendo nome do setor, número do protocolo e um campo para saber se o protocolo foi consumido ou não, detalhando data e hora da utilização.
</p>


	#### H4 Foram 4 classes do domínio do problema;
	Classe Pedido para representar uma comanda com id da mesa, hora abertura, hora fechamando, situação e um array de lista de produtos;<br>
	Classe Produto contendo nome, quantidade e preço;<br>
	Classe Mesa contendo apenas o id da mesa;<br>
	Classe Lista de Pedidos que retorna uma instancia de uma lista de Pedidos.<br>

	####Foram criadas 6 páginas JSP;H4<br>
	Página PedidosSolicitados que contém uma tabela apresentando todos pedidos cadastrados, com opções de fechar comanda, adicionar novo produto e visualizar itens adicionados;<br>
	Página ItensSolicitados que contém uma tabela para apresentação detalhada de todos produtos do pedido;<br>
	Página ItensAdicionar que contém um formulário para cadastrar um produto em determinada mesa;<br>
	Página ItensAdicionadosErro, caso um pedido já esteja fechado, será direcionado a está página de erro;<br>
	Página AdicionarPedidoErro, caso um pedido já esteja cadastrado, não poderá haver outro pedido para o mesmo nome de mesa, caso contrário será direcionado a está página de erro;<br>
	Página AdicionarPedido que adiciona um novo pedido a comanda.<br>



Levantamento dos campos necessários para a construção das telas;
Descrição sucinta dos pontos importantes do funcionamento da interface;
Discussão dos pontos que apresentaram maior dificuldade de implementação;
Pontos onde podem ser realizadas melhorias futuras.
