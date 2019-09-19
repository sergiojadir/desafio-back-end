class CreateTransacoes < ActiveRecord::Migration[6.0]
  def change
    create_table :transacoes do |t|
      t.datetime :data_e_hora, null: false
      t.decimal :valor, :precision => 10, :scale => 2, null: false
      t.string :cpf, limit: 11, null: false
      t.string :cartao, limit: 12, null: false
      t.string :dono_da_loja, limit: 14, null: false
      t.string :nome_da_loja, limit: 19, null: false

      t.references :arquivo_cnab, foreign_key: true
      t.references :tipo_da_transacao, foreign_key: true

      t.timestamps
    end
  end
end
