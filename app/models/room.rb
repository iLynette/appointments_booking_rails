class Room < ApplicationRecord
  has_many :bookings

  validates :name, presence: true
  validates :capacity, presence: true
end
