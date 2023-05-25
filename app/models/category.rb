class Category < ApplicationRecord
	has_many :animals
	validates_presence_of :specy
end
