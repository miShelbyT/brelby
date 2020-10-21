class Order < ApplicationRecord

  belongs_to :customer
  belongs_to :wine
  belongs_to :cupcake

  validates :customer_id, presence: true
  validates :wine_id, presence: true
  validates :cupcake_id, presence: true
  validates :date, presence: true
  validate :date_cannot_be_in_the_past
  validates :time, presence: true
  validates :tip, presence: true
  
  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end

end
