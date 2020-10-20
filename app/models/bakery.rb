class Bakery < ApplicationRecord
    has_many :cupcakes
    has_many :orders, through: :cupcakes
end
