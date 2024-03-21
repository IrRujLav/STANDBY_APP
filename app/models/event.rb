class Event < ApplicationRecord
  belongs_to :venue
  validates :name, :description, :price, :category, :date, presence: true
  validates :category, inclusion: {in: ["Stand up comedy", "Improv", "Open mic", "Live music", "Theater"]}
end
