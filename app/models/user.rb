class User < ApplicationRecord
    has_many :orders
    has_many :cupcakes, through: :orders
    has_many :wines, through: :orders
end
