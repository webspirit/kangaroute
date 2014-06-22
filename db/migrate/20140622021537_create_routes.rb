class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :departure_address
      t.string :arrival_address
      t.decimal :departure_lat, precision: 18, scale: 12
      t.decimal :departure_lng, precision: 18, scale: 12
      t.decimal :arrival_lat, precision: 18, scale: 12
      t.decimal :arrival_lng, precision: 18, scale: 12
      t.float :departure_distance_range
      t.float :arrival_distance_range
      t.datetime :start_time
      t.datetime :time_range_from
      t.datetime :time_range_to
      t.boolean :active
      t.integer :user_id

      t.timestamps
    end
    add_index :routes, :user_id
  end
end
