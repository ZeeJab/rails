class Person < ActiveRecord::Base
	validates :name, :presence => true #validates for the presence of name
 	mount_uploader :photo, ProfilePicUploader 
end
