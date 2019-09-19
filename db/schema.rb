# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_18_225028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arquivo_cnabs", force: :cascade do |t|
    t.string "arquivo_id"
    t.string "arquivo_filename"
    t.string "arquivo_size"
    t.string "arquivo_content_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipo_da_transacoes", force: :cascade do |t|
    t.integer "codigo", null: false
    t.string "descricao", null: false
    t.string "natureza", null: false
    t.string "sinal", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["codigo"], name: "index_tipo_da_transacoes_on_codigo"
  end

  create_table "transacoes", force: :cascade do |t|
    t.date "data", null: false
    t.decimal "valor", precision: 10, scale: 2, null: false
    t.string "cpf", limit: 11, null: false
    t.string "cartao", limit: 12, null: false
    t.time "hora", null: false
    t.string "dono_da_loja", limit: 14, null: false
    t.string "nome_da_loja", limit: 19, null: false
    t.bigint "arquivo_cnab_id"
    t.bigint "tipo_da_transacao_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["arquivo_cnab_id"], name: "index_transacoes_on_arquivo_cnab_id"
    t.index ["tipo_da_transacao_id"], name: "index_transacoes_on_tipo_da_transacao_id"
  end

  add_foreign_key "transacoes", "arquivo_cnabs"
  add_foreign_key "transacoes", "tipo_da_transacoes"
end
