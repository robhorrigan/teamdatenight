class Movie < ActiveRecord::Base
  has_one :restaurant
end
