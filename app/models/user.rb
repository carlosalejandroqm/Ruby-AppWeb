class User < ApplicationRecord
  self.table_name = 'user'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Model associations

	# Signature - User
  has_one :file_attachment
end
