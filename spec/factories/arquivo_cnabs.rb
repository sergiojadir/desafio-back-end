FactoryBot.define do
  factory :arquivo_cnab do
    tipo { 1 }
    data { "2019-09-17" }
    valor { "9.99" }
    cpf { "MyString" }
    cartao { "MyString" }
    hora { "2019-09-17 21:16:12" }
    dono_da_loja { "MyString" }
    nome_da_loja { "MyString" }
  end
end
