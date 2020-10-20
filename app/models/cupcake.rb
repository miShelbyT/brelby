class Cupcake < ApplicationRecord
  belongs_to :bakery
  has_many :orders
  has_many :customers, through: :orders
end
