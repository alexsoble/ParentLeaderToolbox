class Toolstar < ActiveRecord::Base
  attr_accessible :tool_id, :user_id
  
  belongs_to :user
  belongs_to :tool
  
end
