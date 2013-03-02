class Tool < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :url
  
  has_many :comments
  has_many :toolstars
  
  belongs_to :category
  
end
