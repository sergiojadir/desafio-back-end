class CreateArquivoCnab < ActiveRecord::Migration[6.0]
  def change
    create_table :arquivo_cnabs do |t|
      t.string :arquivo_id
      t.string :arquivo_filename
      t.string :arquivo_size
      t.string :arquivo_content_type
      t.string :state

      t.timestamps
    end
  end
end