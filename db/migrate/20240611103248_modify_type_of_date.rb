class ModifyTypeOfDate < ActiveRecord::Migration[7.1]
  def change
    change_column :bookings, :date_start, :date
  end
end
