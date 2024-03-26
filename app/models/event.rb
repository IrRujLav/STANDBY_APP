class Event < ApplicationRecord
  belongs_to :venue
  has_many :bookings, dependent: :destroy
  validates :name, :description, :price, :category, :date, presence: true
  validates :category, inclusion: {in: ["Stand up comedy", "Improv", "Open mic", "Live music", "Theater"]}
end
