class Signature < ApplicationRecord
	self.table_name = 'signature'
	has_one :user
end
