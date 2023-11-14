class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :date, presence: true, uniqueness: { scope: :service_id }
  validates :location, presence: true
  validates :total_price, presence: true
  validates :comments, presence: true
  validates :status, presence: true
end
