class Article < ActiveRecord::Base
  attr_accessible :body, :title
  
  validates :body, :presence => true
  validates :title, :uniqueness => true, :presence => true, :length => {:minimum => 3}
end
