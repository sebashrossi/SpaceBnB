class Planet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :description, :address, :price, :guest_limit, presence: true
  validates :name, uniqueness: true

end
