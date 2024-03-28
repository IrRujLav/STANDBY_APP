class Venue < ApplicationRecord
  has_many :events
  validates :location, :name, :image, :category, presence: true
  validates :category, inclusion: {in: ["Bar/Café", "Theater", "Open air", "Other"]}
end
