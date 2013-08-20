class User < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :name, presence: true,
                    length: {minimum: 5}
  validates :email, presence: true,
		     length: {minimum: 10}
  attr_accesible :name, :email, :password, :password_confirmationb has_secure_password
end
