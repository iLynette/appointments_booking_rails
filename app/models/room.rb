class Room < ApplicationRecord
    validates :name, presence: true
    validates :capacity, presence: true
end
