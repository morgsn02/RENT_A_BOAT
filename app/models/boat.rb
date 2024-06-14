class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_name, against: [:name_boat], using: { tsearch: { prefix: true } }
end
