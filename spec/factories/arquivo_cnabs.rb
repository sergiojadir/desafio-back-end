FactoryBot.define do
  factory :arquivo_cnab do
  	arquivo { Refile::FileDouble.new("dummy", "cnab.txt", content_type: "text/plain") }
  end
end
