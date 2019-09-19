# Criar tipo de transação
[
	{ codigo: 1, descricao: "Débito", natureza:	"Entrada", sinal:	"+" },
	{ codigo: 2, descricao: "Boleto", natureza:	"Saída", sinal:	"-" },
	{ codigo: 3, descricao: "Financiamento", natureza:	"Saída", sinal:	"-" },
	{ codigo: 4, descricao: "Crédito", natureza:	"Entrada", sinal:	"+" },
	{ codigo: 5, descricao: "Recebimento Empréstimo", natureza:	"Entrada", sinal:	"+" },
	{ codigo: 6, descricao: "Vendas", natureza:	"Entrada", sinal:	"+" },
	{ codigo: 7, descricao: "Recebimento TED", natureza:	"Entrada", sinal:	"+" },
	{ codigo: 8, descricao: "Recebimento DOC", natureza:	"Entrada", sinal:	"+" },
	{ codigo: 9, descricao: "Aluguel", natureza:	"Saída", sinal:	"-" }
].each do |attributes|
	TipoDaTransacao.find_or_create_by(
		codigo: attributes[:codigo],
		descricao: attributes[:descricao],
		natureza: attributes[:natureza],
		sinal: attributes[:sinal]
	)
end
