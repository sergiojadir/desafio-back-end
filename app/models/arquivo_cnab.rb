class ArquivoCnab < ApplicationRecord
	# Associations
	has_many :transacoes

	# Attachment
	attachment :arquivo

	# Validates
	validate :arquivo_vazio

	# State machine
	state_machine initial: :em_processamento do
    event :terminar do
      transition em_processamento: :processado
    end

    event :error do
    	transition em_processamento: :processado_com_erro
    end
  end

	# Instance methods
	def arquivo_vazio
		errors.add(:arquivo, :blank, message: "não pode ficar em branco") if arquivo.nil?
	end

	def transacoes_agrupadas_por_loja
		transacoes.select("nome_da_loja, SUM(valor) as saldo").group("nome_da_loja")
	end
end
