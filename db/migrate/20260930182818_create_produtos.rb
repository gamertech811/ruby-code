class CreateProdutos < ActiveRecord::Migration[8.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :qntd
      t.float :preco
      t.text :descricao

      t.timestamps
    end
  end
end
