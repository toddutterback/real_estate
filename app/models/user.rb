class User < ActiveRecord::Base
  validates_uniqueness_of :email
  validates_presence_of :email, :password_digest
  has_secure_password
  has_many :sellers

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
