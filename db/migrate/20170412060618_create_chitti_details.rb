class CreateChittiDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :chitti_details do |t|
    	t.integer :chitti_no
      t.text :chitti_name
      t.integer :amount
      t.integer :validity
      t.text :recurr_type
      t.integer :pay_amount
      t.timestamps
    end
  end
end
