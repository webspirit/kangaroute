class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :departure_address
      t.string :arrival_address
      t.decimal :departure_lat, precision: 18, scale: 12
      t.decimal :departure_lng, precision: 18, scale: 12
      t.decimal :arrival_lat, precision: 18, scale: 12
      t.decimal :arrival_lng, precision: 18, scale: 12
      t.datetime :departure_datetime
      t.integer :driver_id
      t.integer :available_seats
      t.text :comments

      t.timestamps
    end
    add_index :rides, :driver_id
  end
end
