class TipoDaTransacao < ApplicationRecord
  # Associations
  has_many :transacoes

  # Validations
  validates :codigo, :descricao, :natureza, :sinal, presence: true

  def entrada?
    sinal == "+"
  end
  
  def saida?
    sinal === "-"
  end
end
