require 'rails_helper'

RSpec.describe TipoDaTransacao, type: :model do
	context 'associations' do
    it { is_expected.to have_many(:transacoes) }
  end

  context 'validations' do
  	it { is_expected.to validate_presence_of(:codigo) }
  	it { is_expected.to validate_presence_of(:descricao) }
  	it { is_expected.to validate_presence_of(:natureza) }
  	it { is_expected.to validate_presence_of(:sinal) }
  end

  context 'table fields' do
  	it { is_expected.to have_db_column(:codigo).of_type(:integer) }
  	it { is_expected.to have_db_column(:descricao).of_type(:string) }
  	it { is_expected.to have_db_column(:natureza).of_type(:string) }
  	it { is_expected.to have_db_column(:sinal).of_type(:string) }
  end

  context 'factories' do
  	it { expect( build(:tipo_da_transacao) ).to be_valid }
  	it { expect( build(:tipo_da_transacao_invalida) ).to_not be_valid }
  end
end
