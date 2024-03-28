class Event < ApplicationRecord
  belongs_to :venue
  validates :name, :image, :description, :price, :category, :date, :time, presence: true
  has_many :bookings, dependent: :destroy
  has_many :discounts, dependent: :detroy 
  validates :category, inclusion: {in: ["Stand up comedy", "Improv", "Open mic", "Live music", "Theater"]}
end
