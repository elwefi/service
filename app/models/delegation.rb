class Delegation < ActiveRecord::Base
  belongs_to :governorate
  has_many :cities
end
