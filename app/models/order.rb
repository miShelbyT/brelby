class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :wine
  belongs_to :cupcake
end
