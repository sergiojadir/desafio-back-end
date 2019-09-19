class AddColumnStatusToArquivoCnab < ActiveRecord::Migration[6.0]
  def change
    add_column :arquivo_cnabs, :status, :string
  end
end
