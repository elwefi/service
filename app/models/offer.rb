class Offer < ActiveRecord::Base
  belongs_to :sub_category
  belongs_to :user
  belongs_to :city
end
