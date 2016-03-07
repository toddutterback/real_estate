class User < ActiveRecord::Base
  validates_uniqueness_of :email
  validates_presence_of :email, :password_digest
  has_secure_password
  has_many :sellers
  
end
