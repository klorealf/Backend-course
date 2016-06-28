# == Schema Information
#
# Table name: nutrients
#
#  id                :integer          not null, primary key
#  nutrient_group_id :integer
#  food_id           :integer
#  amount            :string
#  measurement       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Nutrient < ApplicationRecord
  belongs_to :food
  belongs_to :nutrient_group
  
  validates :food_id, uniqueness: { scope: :nutrient_group_id }
end
