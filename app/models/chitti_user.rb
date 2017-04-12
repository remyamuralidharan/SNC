class ChittiUser < ApplicationRecord
  belongs_to :user
  belongs_to :chitti_detail
end
