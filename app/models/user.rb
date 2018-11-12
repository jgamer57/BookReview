class User < ApplicationRecord
	has_many :books
	has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	 def adorable_avatar
     "https://api.adorable.io/avatars/50/#{email}"
	 end
end
