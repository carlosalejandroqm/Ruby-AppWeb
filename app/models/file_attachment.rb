class FileAttachment < ApplicationRecord
	self.table_name = 'file'
	# Model associations

	# Signature - User
	has_many :user, foreign_key: :signature_id
end
