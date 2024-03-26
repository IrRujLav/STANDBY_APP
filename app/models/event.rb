class Event < ApplicationRecord
  belongs_to :venue
  validates :name, :image, :description, :price, :category, :date, presence: true
  has_many :bookings, dependent: :destroy
  validates :category, inclusion: {in: ["Stand up comedy", "Improv", "Open mic", "Live music", "Theater"]}
end
