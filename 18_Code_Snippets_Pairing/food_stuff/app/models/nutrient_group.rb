# == Schema Information
#
# Table name: nutrient_groups
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class NutrientGroup < ApplicationRecord
  validates :name, uniqueness: true
  has_many :nutrients
  has_many :foods, through: :nutrients
end
