class City < ActiveRecord::Base
  belongs_to :delegation
  has_many :offers
end
