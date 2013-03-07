class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :password_digest, :password, :password_confirmation
  
  has_many :comments
  has_many :toolstars
  has_many :commentstars

  has_secure_password
  
end
