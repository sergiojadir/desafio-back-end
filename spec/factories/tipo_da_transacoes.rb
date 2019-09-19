FactoryBot.define do
  factory :tipo_da_transacao do
    codigo { 1 }
    descricao { "Débito" }
    natureza { "Saída" }
    sinal { "-" }
  end
end
