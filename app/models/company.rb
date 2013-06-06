class Company < ActiveRecord::Base
  attr_accessible :name, :website

  has_many :users
  has_many :addresses, :as => :addressable
end
