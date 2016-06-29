class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :city
      t.string :postal_code
      t.string :rating
      t.string :yelp_uid
      t.integer :category_id

      t.timestamps
    end
  end
end
