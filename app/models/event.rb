class Event < ApplicationRecord
  belongs_to :venue
  validates :name, :description, :price, :category, :date, presence: true
end
