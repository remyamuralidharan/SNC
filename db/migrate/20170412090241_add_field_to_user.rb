class AddFieldToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :house_name, :text
  	add_column :users, :place, :text
  	add_column :users, :city, :text
  	add_column :users, :mob_no, :string
  end
end
