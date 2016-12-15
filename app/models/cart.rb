class Cart < ActiveRecord::Base
	has_many :lineitems, :dependent => :destroy
	def add_activity(activity_id)
		current_item = lineitems.find_by_activity_id(activity_id)
		if current_item
		current_item.quantity += 1
		else
		current_item = lineitems.new(activity_id: activity_id)
		current_item.quantity = 1
		end
		current_item
	end

end
