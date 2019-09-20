require 'rails_helper'

RSpec.describe ArquivoCnabParseService do

	before :each do
		@tipo_de_transacao = create(:tipo_da_transacao)

		@attributes = {
			tipo_da_transacao_id: @tipo_de_transacao.id,
			data_e_hora: Time.zone.parse("20190301 172712"),
			valor: -192,
			cpf: "84515254073",
			cartao: "6777****1313",
			dono_da_loja: "MARCOS PEREIRA",
			nome_da_loja: "MERCADO DA AVENIDA"
		}
	end

	context ".parse_linha" do
		let!(:linha) { "3201903010000019200845152540736777****1313172712MARCOS PEREIRAMERCADO DA AVENIDA" }
		let!(:parse_service) { ArquivoCnabParseService.new(linha) }

		it ".tipo_da_transacao" do
			expect(parse_service.tipo_da_transacao.id).to eq(@attributes[:tipo_da_transacao_id])
		end

		it ".data_e_hora" do
			expect(parse_service.data_e_hora).to eq(@attributes[:data_e_hora])
		end

		it ".data" do
			expect(parse_service.data).to eq("20190301")
		end

		it ".hora" do
			expect(parse_service.hora).to eq("172712")
		end

		it ".valor" do
			expect(parse_service.valor).to eq(@attributes[:valor])
		end

		it ".cpf" do
			expect(parse_service.cpf).to eq(@attributes[:cpf])
		end

		it ".cartao" do
			expect(parse_service.cartao).to eq(@attributes[:cartao])
		end

		it ".dono_da_loja" do
			expect(parse_service.dono_da_loja).to eq(@attributes[:dono_da_loja])
		end

		it ".nome_da_loja" do
			expect(parse_service.nome_da_loja).to eq(@attributes[:nome_da_loja])
		end

		it ".attributes" do
			expect(parse_service.attributes).to eq(@attributes)
		end
	end
end