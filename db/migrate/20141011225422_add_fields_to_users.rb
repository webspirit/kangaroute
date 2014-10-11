class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :mobile, :string
  	add_column :users, :name, :string
  	add_column :users, :about, :text
  	add_column :users, :photo, :string
  end
end
