class TipoDaTransacao < ApplicationRecord
	# Associations

	# Class methods
	class << self
		def aluguel
			find_by(descricao: "Aluguel")
		end

		def boleto
			find_by(descricao: "Boleto")
		end

		def credito
			find_by(descricao: "Crédito")
		end

		def debito
			find_by(descricao: "Débito")
		end

		def financiamento
			find_by(descricao: "Financiamento")
		end

		def recebimento_emprestimo
			find_by(descricao: "Recebimento empréstimo")
		end

		def recebimento_ted
			find_by(descricao: "Recebimento TED")
		end

		def recebimento_doc
			find_by(descricao: "Recebimento DOC")
		end

		def vendas
			find_by(descricao: "Vendas")
		end
	end
end
