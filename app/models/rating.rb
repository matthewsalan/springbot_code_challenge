class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true }
  validates :rating, presence: { message: "Rating must bbe between 1 - 5" }
  validates_numericality_of :rating, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5
end
