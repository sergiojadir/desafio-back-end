require 'rails_helper'

RSpec.describe ArquivoCnabParseService do
	context ".parse_linha" do
		let!(:tipo_da_transacao) { create(:tipo_da_transacao) }
		let!(:linha) { "3201903010000019200845152540736777****1313172712MARCOS PEREIRAMERCADO DA AVENIDA" }
		let!(:parse_service) { ArquivoCnabParseService.new(linha) }

		it "tipo_da_transacao" do
			expect(parse_service.tipo_da_transacao).to eq(3)
		end

		it "data_e_hora" do
			expect(parse_service.data_e_hora).to eq(Time.zone.parse("20190301 172712"))
		end

		it "data" do
			expect(parse_service.data).to eq("20190301")
		end

		it "hora" do
			expect(parse_service.hora).to eq("172712")
		end

		it "valor" do
			expect(parse_service.valor).to eq(-192)
		end

		it "cpf" do
			expect(parse_service.cpf).to eq("84515254073")
		end

		it "cartao" do
			expect(parse_service.cartao).to eq("6777****1313")
		end

		it "dono_da_loja" do
			expect(parse_service.dono_da_loja).to eq("MARCOS PEREIRA")
		end

		it "nome_da_loja" do
			expect(parse_service.nome_da_loja).to eq("MERCADO DA AVENIDA")
		end
	end
end