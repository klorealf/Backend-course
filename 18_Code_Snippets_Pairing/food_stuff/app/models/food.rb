# == Schema Information
#
# Table name: foods
#
#  id           :integer          not null, primary key
#  name         :string
#  image_url    :string
#  serving_size :string
#  measurement  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Food < ApplicationRecord
end
