class CreateArquivoCnabs < ActiveRecord::Migration[6.0]
  def change
    create_table :arquivo_cnabs do |t|
      t.integer :tipo, length: 1
      t.date :data
      t.decimal :valor, :precision => 10, :scale => 2
      t.string :cpf, length: 11
      t.string :cartao, length: 12
      t.time :hora, default: 'UTC-3'
      t.string :dono_da_loja, length: 14
      t.string :nome_da_loja, length: 19

      t.timestamps
    end
  end
end
