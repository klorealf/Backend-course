# == Schema Information
#
# Table name: accounts
#
#  id           :integer          not null, primary key
#  account_type :string
#  first_name   :string
#  last_name    :string
#  mobile       :string
#  email        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#

class Account < ApplicationRecord
  TYPES = %w{barber client}
  belongs_to :user
  belongs_to :barber 

  validates_presence_of :mobile, :email, :first_name, :account_type, :user_id
  validates_uniqueness_of :mobile, :email
end
