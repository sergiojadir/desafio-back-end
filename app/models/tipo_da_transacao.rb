class TipoDaTransacao < ApplicationRecord
	# Associations
	has_many :transacoes

	# Validations
	validates :codigo, :descricao, :natureza, :sinal, presence: true
end
