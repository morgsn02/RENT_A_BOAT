class CreateBoats < ActiveRecord::Migration[7.1]
  def change
    create_table :boats do |t|
      t.integer :price_per_day
      t.integer :construction_date
      t.integer :puissance
      t.integer :max_person
      t.string :name_boat
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
