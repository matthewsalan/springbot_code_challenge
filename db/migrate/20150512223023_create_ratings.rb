class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.datetime :last_visited
      t.belongs_to :restaurant, index: true
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
