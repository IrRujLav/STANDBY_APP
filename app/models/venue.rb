class Venue < ApplicationRecord
  validates :location, :name, :image, :category, presence: true
  validates :category, inclusion: {in: ["Bar/Café", "Theater", "Open air", "Other"]}
end
