class User < ApplicationRecord
	has_many :items
	validates_presence_of :name
	validates :email, uniqueness: true
end
