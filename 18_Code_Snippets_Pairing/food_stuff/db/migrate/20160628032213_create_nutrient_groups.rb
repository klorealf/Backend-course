class CreateNutrientGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :nutrient_groups do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
