require 'rails_helper'

RSpec.describe Transacao, type: :model do
	context 'associations' do
    it { is_expected.to belong_to(:arquivo_cnab) }
    it { is_expected.to belong_to(:tipo_da_transacao) }
  end

  context 'validations' do
  	it { is_expected.to validate_presence_of(:data) }
  	it { is_expected.to validate_presence_of(:valor) }
  	it { is_expected.to validate_presence_of(:cpf) }
  	it { is_expected.to validate_presence_of(:cartao) }
  	it { is_expected.to validate_presence_of(:hora) }
  	it { is_expected.to validate_presence_of(:dono_da_loja) }
  	it { is_expected.to validate_presence_of(:nome_da_loja) }
  end

  context 'table fields' do
  	it { is_expected.to have_db_column(:arquivo_cnab_id).of_type(:integer) }
  	it { is_expected.to have_db_column(:tipo_da_transacao_id).of_type(:integer) }
  	it { is_expected.to have_db_column(:data).of_type(:date) }
  	it { is_expected.to have_db_column(:valor).of_type(:decimal) }
  	it { is_expected.to have_db_column(:cpf).of_type(:string) }
  	it { is_expected.to have_db_column(:cartao).of_type(:string) }
  	it { is_expected.to have_db_column(:hora).of_type(:time) }
  	it { is_expected.to have_db_column(:dono_da_loja).of_type(:string) }
  	it { is_expected.to have_db_column(:nome_da_loja).of_type(:string) }
  end

  context 'factories' do
  	it { expect( build(:transacao) ).to be_valid }
  	it { expect( build(:transacao_invalida) ).to_not be_valid }
  end
end
