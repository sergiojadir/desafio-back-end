require 'rails_helper'

RSpec.describe TransacoesController, type: :controller do

  before :each do
    @arquivo_cnab = create(:arquivo_cnab)
  end

  describe "GET #index" do
    it "returns http success" do
      
      get :index, params: { arquivo_cnab_id: @arquivo_cnab.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #detalhes_da_trasacao" do
    it "returns http success" do

      get :detalhes_da_trasacao, params: { arquivo_cnab_id: @arquivo_cnab.id }
      expect(response).to have_http_status(:success)
    end
  end

end
