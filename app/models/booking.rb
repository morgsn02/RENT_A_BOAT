class Booking < ApplicationRecord
  belongs_to :boat
  belongs_to :user
  validates :date_end, presence: true
  validates :date_start, presence: true
end
