class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image_url
      t.string :serving_size
      t.string :measurement

      t.timestamps
    end
  end
end
