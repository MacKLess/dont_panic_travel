class Trip < ActiveRecord::Base
  has_many :reviews
  validates_presence_of :location, :planet, :locals, :transportation
end
