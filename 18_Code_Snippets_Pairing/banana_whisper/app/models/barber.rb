# == Schema Information
#
# Table name: barbers
#
#  id            :integer          not null, primary key
#  profile_image :string
#  biography     :text
#  city          :string
#  zip_code      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  active        :boolean
#

class Barber < ApplicationRecord
  has_many :appointment_requests
  has_one :account
  validates_presence_of :biography, :city, :zip_code, :profile_image
end
