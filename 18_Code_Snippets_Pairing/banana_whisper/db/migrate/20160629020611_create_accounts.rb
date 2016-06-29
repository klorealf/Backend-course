class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :account_type
      t.string :first_name
      t.string :last_name
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
