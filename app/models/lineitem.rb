class Lineitem < ActiveRecord::Base

	belongs_to :activity
	belongs_to :cart
	belongs_to :order
end
