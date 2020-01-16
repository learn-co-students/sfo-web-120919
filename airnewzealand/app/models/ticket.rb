class Ticket < ApplicationRecord
  belongs_to :flight
  belongs_to :passenger

  validates :seat_num, presence: true, uniqueness: true
  validates :seat_num, numericality: { less_than: 200 }
end
