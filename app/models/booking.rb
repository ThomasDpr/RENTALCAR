class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true, numericality: { only_integer: true }
  validates :car_id, presence: true
  validates :user_id, presence: true
  # Un booking doit avoir une date de début, une date de fin, un prix total, une voiture et un user
end
