class Venue < ApplicationRecord
  validates :location, :name, :type, presence: truerails
end
