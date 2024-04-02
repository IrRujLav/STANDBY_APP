class Event < ApplicationRecord
  CATEGORIES = ["Stand up comedy", "Improv", "Open mic", "Live music", "Theater"]

  belongs_to :venue
  validates :name, :description, :price, :category, :date, :time, :photos, presence: true
  has_many :bookings, dependent: :destroy
  has_many :discounts, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES }
  has_many_attached :photos
end
