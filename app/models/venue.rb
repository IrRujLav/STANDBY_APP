class Venue < ApplicationRecord
  validates :location, :name, :type, presence: true
end
