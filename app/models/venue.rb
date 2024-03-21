class Venue < ApplicationRecord
  validates :location, :name, :type, presence: true
  validates :type, inclusion: {in: ["Bar/Café", "Theater", "Open air", "Other"]}
end
