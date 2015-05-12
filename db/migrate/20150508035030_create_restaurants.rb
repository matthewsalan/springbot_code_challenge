class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :rating
      t.datetime :last_visited
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
