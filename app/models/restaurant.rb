class Restaurant < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings
  validates :name, presence: true
  validates :name, uniqueness: true
end
