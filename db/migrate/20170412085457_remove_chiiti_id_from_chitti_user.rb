class RemoveChiitiIdFromChittiUser < ActiveRecord::Migration[5.0]
  def change
  	remove_column :chitti_users, :chitti_id
  	add_column :chitti_users, :chitti_detail_id, :integer
  end
end
