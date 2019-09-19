FactoryBot.define do
  factory :tipo_da_transacao do
    codigo { 1 }
    descricao { "Débito" }
    natureza { "Saída" }
    sinal { "-" }
  end

  factory :tipo_da_transacao_invalida, class: TipoDaTransacao do
    codigo { 2 }
  end
end
