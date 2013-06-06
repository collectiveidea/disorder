class Company < ActiveRecord::Base
  attr_accessible :name, :website
  
  has_many :addresses, :as => :addressable
end
