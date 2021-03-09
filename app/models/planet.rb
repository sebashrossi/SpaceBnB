class Planet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, :address, :price, :guest_limit, presence: true
  validates :name, :address, uniqueness: true
end
