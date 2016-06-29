# == Schema Information
#
# Table name: appointment_requests
#
#  id               :integer          not null, primary key
#  request_date     :date
#  request_time     :time
#  location         :string
#  service_category :string
#  barber_id        :integer
#  active           :boolean
#  status           :string
#  account_id       :integer
#  request_datetime :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class AppointmentRequest < ApplicationRecord
  belongs_to :barber
  belongs_to :account
  
  validates_presence_of :service_category, :location
end
