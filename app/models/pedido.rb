class Pedido < ApplicationRecord
  validates :mesa, :id_prato, presence: true
end
