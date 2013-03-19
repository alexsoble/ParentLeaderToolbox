class Comment < ActiveRecord::Base
  attr_accessible :text, :tool_id, :user_id
  
  has_many :commentstars
  belongs_to :user
  belongs_to :tool
  
end
