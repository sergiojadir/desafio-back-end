class ArquivoCnabService
	attr_reader :arquivo_cnab

	def initialize(arquivo_cnab)
		@arquivo_cnab = arquivo_cnab
	end
	
	def parse_and_save!
		transacoes = self.arquivo_cnab.arquivo.read.encode!("UTF-8", "UTF-8", invalid: :replace).each_line.lazy

		transacoes.each_slice(2000) do |linhas|
			linhas.each do |linha|
				attributes = ArquivoCnabParseService.new(linha).attributes
				
				transacao = Transacao.new(attributes)
				transacao.arquivo_cnab_id = arquivo_cnab.id
				transacao.save!
			end
		end
	end
end