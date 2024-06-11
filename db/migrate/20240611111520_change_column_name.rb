class ChangeColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column(:boats, :construction_date, :construction_year)
  end
end
