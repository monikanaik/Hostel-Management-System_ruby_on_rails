class Block < ApplicationRecord
    has_many :rooms
    has_many :staffs

end
