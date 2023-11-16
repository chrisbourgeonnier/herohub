class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :bookings_as_owner, through: :services, source: :bookings
  has_one_attached :photo
  validates :superhero_name, presence: true, uniqueness: true
  validates :fee, presence: true
  validates :bio, presence: true
end
