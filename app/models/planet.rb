class Planet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :description, :address, :price, :guest_limit, presence: true
  validates :name, :address, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
