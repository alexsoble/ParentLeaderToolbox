class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :password_digest
  
  has_many :comments
  has_many :toolstars
  has_many :commentstars
  
end
