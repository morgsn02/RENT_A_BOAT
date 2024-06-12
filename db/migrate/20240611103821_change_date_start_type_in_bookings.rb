class ChangeDateStartTypeInBookings < ActiveRecord::Migration[7.1]
  def up
    change_column :bookings, :date_start, 'date USING date_start::date'
  end

  def down
    change_column :bookings, :date_start, :integer
  end
end
