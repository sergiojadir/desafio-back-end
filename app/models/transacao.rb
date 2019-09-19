class Transacao < ApplicationRecord
	# Associations
	belongs_to :arquivo_cnab
	belongs_to :tipo_da_transacao

	# Validations
	validates :data, :valor, :cpf, :cartao, :hora, :dono_da_loja, :nome_da_loja, presence: true

	validates :cpf, uniqueness: true
end
