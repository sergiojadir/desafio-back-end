FactoryBot.define do
  factory :transacao do
    data { "2019-09-17" }
    valor { 9.99 }
    cpf { "11111111111" }
    cartao { "222222222222" }
    hora { "2019-09-17 21:16:12" }
    dono_da_loja { Faker::Name.name }
    nome_da_loja { Faker::Company.name }

    association :arquivo_cnab, factory: :arquivo_cnab
    association :tipo_da_transacao, factory: :tipo_da_transacao
  end

  factory :transacao_invalida, class: Transacao do
    association :tipo_da_transacao, factory: :tipo_da_transacao
    cpf { 11111111111 }
  end
end
