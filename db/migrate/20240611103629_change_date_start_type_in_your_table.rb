class ChangeDateStartTypeInYourTable < ActiveRecord::Migration[7.1]
  def change
    change_column :your_table, :date_start, 'date USING date_start::date'
  end
end
