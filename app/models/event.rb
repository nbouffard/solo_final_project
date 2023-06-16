class Event < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_many :bookings

  validates :title, :description, :date, presence: true
end
