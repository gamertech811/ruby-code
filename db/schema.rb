# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_09_30_182818) do
  create_table "dezporcento", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.decimal "valor", precision: 10, scale: 2, null: false
    t.date "data", null: false
  end

  create_table "pagamentos", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "n_pedido", null: false
    t.decimal "valor", precision: 10, scale: 2, null: false
    t.string "tipo", limit: 100, null: false
    t.boolean "dezporcento", null: false
    t.date "data", null: false
  end

  create_table "pedidos", primary_key: "numero", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.timestamp "created_at", null: false
    t.integer "mesa", null: false
    t.datetime "hora", precision: nil
    t.boolean "fechado", null: false
  end

  create_table "pratos", primary_key: "numero", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "nome", null: false
    t.string "descricao", null: false
    t.decimal "preco", precision: 10, scale: 2, null: false
  end

  create_table "pratos_pedidos", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "n_pedido", null: false
    t.integer "n_prato", null: false
    t.integer "status", null: false
  end

  create_table "produtos", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "nome"
    t.integer "qntd"
    t.float "preco"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
