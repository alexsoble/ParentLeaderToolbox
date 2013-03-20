class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :password_digest, :password, :password_confirmation, :image
  
  has_many :comments
  has_many :toolstars
  has_many :commentstars

  has_secure_password
  
  after_create :set_default_image
  
  def set_default_image
  	if self.firstname.present?
  		self.image = "#{self.firstname.downcase}.jpg"
  		self.save
  	end
  end
  
end
