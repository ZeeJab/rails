class Ninja < ActiveRecord::Base
	has_secure_password #now it knows about encrypting things and decrypting things
end
