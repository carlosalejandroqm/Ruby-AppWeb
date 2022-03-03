class User < ApplicationRecord
  self.table_name = 'user'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Model associations

	# Signature - User
  belongs_to :file_attachment, foreign_key: :signature_id, optional: true
end
