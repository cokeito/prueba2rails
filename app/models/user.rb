class User < ApplicationRecord
	has_many :items
	validates_presence_of :name
	validates :email, uniqueness: true

	before_validation :set_first_capitalize

	def set_first_capitalize
		self.name = self.name.to_s.capitalize
	end

end
