class WineShop < ApplicationRecord
    has_many :wines
    has_many :orders, through: :wines
end
