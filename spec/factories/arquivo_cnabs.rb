FactoryBot.define do
  factory :arquivo_cnab do
  	arquivo { Refile::FileDouble.new("dummy", "cnab.txt", content_type: "text/plain") }
  end

  factory :arquivo_cnab_invalido, class: ArquivoCnab do
    arquivo { nil }
  end
end
