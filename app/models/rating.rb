class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  validates :restaurant_id, uniqueness: { scope: :user_id,
    message: "has been rated by you.  One rating per user per restaurant " }
  validates :rating, numericality: { only_integer: true }
  validates :rating, presence: true 
  validates_numericality_of :rating, { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5, message: "Rating must be between 1 - 5" }
end