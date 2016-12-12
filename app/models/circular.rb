class Circular < ApplicationRecord
	mount_uploader :atach, AtachUploader
	belongs_to :user
end
