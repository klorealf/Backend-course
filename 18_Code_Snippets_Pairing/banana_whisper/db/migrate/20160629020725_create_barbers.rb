class CreateBarbers < ActiveRecord::Migration[5.0]
  def change
    create_table :barbers do |t|
      t.string :profile_image
      t.text :biography
      t.string :city
      t.string :zip_code

      t.timestamps
    end
  end
end
