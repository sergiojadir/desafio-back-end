require 'rails_helper'

RSpec.describe ArquivoCnabService do
	before :each do
		create(:tipo_da_transacao, { codigo: 3 })
	end

	context ".carregar_transacoes" do

		let!(:tamanho_da_linha) { 80 }
		let!(:linha) { "3201903010000019200845152540736777****1313172712MARCOS PEREIRAMERCADO DA AVENIDA" }

		it ".constants" do
			expect(ArquivoCnabService::TAMANHO_DA_LINHA).to eq(tamanho_da_linha)
		end

		it "transacoes com sucesso" do
			arquivo_cnab = ArquivoCnab.new
			File.open("#{Rails.root}/spec/files/arquivo_cnab.txt", "rb") do |file|
			  arquivo_cnab.arquivo = file
			end
			arquivo_cnab.save

			arquivo_cnab_service = ArquivoCnabService.new(arquivo_cnab)
			arquivo_cnab_service.parse_and_save!

			transacoes = arquivo_cnab.transacoes

			expect(transacoes).not_to be_nil
		end

		it "transacoes com erro" do
			arquivo_cnab = ArquivoCnab.new
			File.open("#{Rails.root}/spec/files/arquivo_cnab_com_erro.txt", "rb") do |file|
			  arquivo_cnab.arquivo = file
			end
			arquivo_cnab.save

			arquivo_cnab_service = ArquivoCnabService.new(arquivo_cnab)
			arquivo_cnab_service.parse_and_save!

			transacoes = arquivo_cnab.transacoes

			expect(transacoes.first).to be_nil
		end
	end

end