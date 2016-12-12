class Assignment < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader
	belongs_to :user

	#def self.queryfind(year,branch,group,subject,number)
		#where("year = year, branch = branch, group = group, subject = subject, 
			#assignment_no = number")
	#end
end
