class Bill < ActiveRecord::Base
	validates :firstname,:lastname,:carmodel,:carnumber,:indate,:outdate, presence: true
	validates :telephone, numericality: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	#validate :checkoperation
	#begin
	
end
