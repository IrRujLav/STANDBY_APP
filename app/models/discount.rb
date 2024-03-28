class Discount < ApplicationRecord
  belongs_to :event
  validates :title, inclusion: {in: ["StandBy", "Last minute"]}
end
