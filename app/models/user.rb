class User < ApplicationRecord
    has_many :orders
    has_many :cupcakes, through: :orders
	has_many :wines, through: :orders
		
	validates :name, presence: true, uniqueness: true
	validates :age, presence: true, numericality: { greater_than: 20 }
	validates :email, presence: true, uniqueness: true
end
