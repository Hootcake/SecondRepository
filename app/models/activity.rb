class Activity < ActiveRecord::Base
	belongs_to :instructor
	belongs_to :room
	has_many :userenrolls
	has_many :lineitems
	self.inheritance_column = nil
	validates :room_id, presence: true
	validates :instructor_id, presence: true
	validates :class_date, presence: true 
	validates :type, presence: true
	
	def self.search(type)
	where("column LIKE ?", "%#{type}%") #whatever column you want to search on
	end
	def self.search(search)
	where("col1 LIKE ?", "%#{type}%") #this searches the contents of the 2 columns
	where("col2 LIKE ?", "%#{type}%") # using OR
	end

end
