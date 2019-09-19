class CreateTipoDaTransacoes < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_da_transacoes do |t|
      t.integer :codigo, null: false, index: true
      t.string :descricao, null: false, unique: true
      t.string :natureza, null: false
      t.string :sinal, null: false

      t.timestamps
    end
  end
end
