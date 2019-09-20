class ArquivoCnabParseService
	attr_accessor :linha

	def initialize(linha)
		@linha = linha
	end

	def attributes
		{
			tipo_da_transacao_id: tipo_da_transacao.id,
			data_e_hora: data_e_hora,
			valor: valor,
			cpf: cpf,
			cartao: cartao,
			dono_da_loja: dono_da_loja,
			nome_da_loja: nome_da_loja
		}
	end

	def tipo_da_transacao
		codigo_da_transacao = self.linha.at(0...1).strip.to_i
		TipoDaTransacao.find_by(codigo: codigo_da_transacao)
	end

	def data_e_hora
		Time.zone.parse("#{data} #{hora}")
	end

	def data
		self.linha.at(1...9).strip
	end

	def hora
		self.linha.at(42...48).strip
	end

	def valor
		valor_ = ( self.linha.at(9...19).strip.to_f / 100 ).round(2)
		return "-#{valor_}".to_i if tipo_da_transacao&.saida?
		valor_
	end

	def cpf
		self.linha.at(19...30).strip
	end

	def cartao
		self.linha.at(30...42).strip
	end

	def dono_da_loja
		self.linha.at(48...62).strip
	end

	def nome_da_loja
		self.linha.at(62...81).strip
	end
end