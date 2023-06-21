class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.integer :breakfast_cal, null: false
      t.integer :lunch_cal, null: false
      t.integer :dinner_cal, null: false
      t.integer :snack_cal, null: false
      t.integer :motion_cal, null: false
      t.date :date, null: false
      t.integer :metabo, null: false
      t.integer :total_cal, null: false
      t.integer :total_kg, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
