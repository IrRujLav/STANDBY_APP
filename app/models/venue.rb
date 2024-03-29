class Venue < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :events, dependent: :destroy
  validates :location, :name, :image, :category, presence: true
  validates :category, inclusion: {in: ["Bar/Café", "Theater", "Open air", "Other"]}
end
