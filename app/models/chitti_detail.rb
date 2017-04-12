class ChittiDetail < ApplicationRecord
	has_many :chitti_users
	has_many :users, through: :chitti_users
	validates_uniqueness_of :chitti_no
end
