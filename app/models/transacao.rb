class Transacao < ApplicationRecord
  # Associations
  belongs_to :arquivo_cnab
  belongs_to :tipo_da_transacao

  # Validations
  validates :data_e_hora, :valor, :cpf, :cartao, :dono_da_loja, :nome_da_loja, presence: true
end
