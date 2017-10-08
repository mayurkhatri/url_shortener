class User < ActiveRecord::Base
	attr_accessor :email

	validates :email, absence: true
end
