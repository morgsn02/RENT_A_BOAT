class AddDaysNumberToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :days_number, :integer
  end
end
