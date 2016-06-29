# == Schema Information
#
# Table name: businesses
#
#  id          :integer          not null, primary key
#  name        :string
#  city        :string
#  postal_code :string
#  rating      :string
#  yelp_uid    :string
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Business < ApplicationRecord
  validates :yelp_uid, uniqueness: true
  validates :yelp_uid, presence: true

  def get_yelp_info
  end

  def self.get_businesses(city, term)
    results = Yelp.client.search(city, {term: term})
    results.businesses.each do |business|
      b = Business.new
      b.name = business.name
      b.city = business.location.city
      b.postal_code = business.location.postal_code business.location.postal_code
      b.rating = business.rating
      b.yelp_uid = business.id
      b.save!
    end
  end
end
