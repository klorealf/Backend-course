class CreateNutrients < ActiveRecord::Migration[5.0]
  def change
    create_table :nutrients do |t|
      t.integer :nutrient_group_id
      t.integer :food_id
      t.string :amount
      t.string :measurement

      t.timestamps
    end
  end
end
