class FileAttachment < ApplicationRecord
	self.table_name = 'file'
	# Model associations

	# Signature - User
	t.belongs_to :user, optional: true, foreign_key: true
end
