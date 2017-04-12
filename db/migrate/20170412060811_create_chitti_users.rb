class CreateChittiUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :chitti_users do |t|
    	t.integer :chitti_id
      t.integer :user_id
      t.timestamps
    end
  end
end
