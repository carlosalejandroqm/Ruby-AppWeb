class FileAttachment < ApplicationRecord
	require 'base64'
	self.table_name = 'file'
	# Model associations

	# Signature - User
	has_many :user, foreign_key: :signature_id

	def get_base_64
		Base64.encode64(self.file.each_byte{|byte| byte})
	end
end
