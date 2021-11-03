class CreateHolidayDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :holiday_dishes do |t|
      t.integer :holiday_id
      t.integer :dish_id

      t.timestamps
    end
  end
end
