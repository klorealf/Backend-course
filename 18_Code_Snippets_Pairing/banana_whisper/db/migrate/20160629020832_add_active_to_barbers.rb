class AddActiveToBarbers < ActiveRecord::Migration[5.0]
  def change
    add_column :barbers, :active, :boolean
  end
end
