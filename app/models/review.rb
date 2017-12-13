class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :trip
  validates_presence_of :rating, :content, presence: true
end
