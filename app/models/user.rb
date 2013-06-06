class User < ActiveRecord::Base
  attr_accessible :age, :company_id, :email, :first_name, :last_name

  belongs_to :company
  has_many :addresses, :as => :addressable
  belongs_to :company
end
