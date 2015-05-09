class Restaurant < ActiveRecord::Base
  has_many :users
  validates :name, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, presence: { message: "Rating must bbe between 1 - 5" }
  validates_numericality_of :rating, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5
end
