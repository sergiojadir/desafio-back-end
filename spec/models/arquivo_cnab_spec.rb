require 'rails_helper'

RSpec.describe ArquivoCnab, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:transacoes) }
  end

  context 'validations' do
  	
  end

  context 'table fields' do
  	it { is_expected.to have_db_column(:arquivo_id).of_type(:string) }
  	it { is_expected.to have_db_column(:arquivo_filename).of_type(:string) }
  	it { is_expected.to have_db_column(:arquivo_size).of_type(:string) }
  	it { is_expected.to have_db_column(:arquivo_content_type).of_type(:string) }
    it { is_expected.to have_db_column(:status).of_type(:string) }
  end

  context 'factories' do
  	# it { expect( build(:arquivo_cnab) ).to be_valid }
  	it { expect( build(:arquivo_cnab_invalido) ).to_not be_valid }
  end
end
