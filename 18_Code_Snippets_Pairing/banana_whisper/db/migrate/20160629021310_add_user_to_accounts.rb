class AddUserToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :user_id, :integer
  end
end
