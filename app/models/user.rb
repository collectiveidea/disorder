class User < ActiveRecord::Base
  attr_accessible :age, :company_id, :email, :first_name, :last_name

  has_many :addresses, :as => :addressable
end
