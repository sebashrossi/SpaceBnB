class AddNumberOfGuestToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :number_of_guests, :integer, default: 1
  end
end
