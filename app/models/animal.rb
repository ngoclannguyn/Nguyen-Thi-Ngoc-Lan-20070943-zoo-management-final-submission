class Animal < ApplicationRecord
	belongs_to :category

	validates_presence_of :name, :dateofbirth, :characteristic
	validates_uniqueness_of :name 

end
