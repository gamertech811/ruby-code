class Prato < ApplicationRecord
  validates :nome, :descricao, :preco, presence: true
end
