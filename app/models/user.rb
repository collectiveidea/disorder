class User < ActiveRecord::Base
  attr_accessible :age, :company_id, :email, :first_name, :last_name, :company_name, :company

  # attr_accessor :company_name

  belongs_to :company
  has_many :addresses, :as => :addressable
  
  validates :first_name, :presence => true

  accepts_nested_attributes_for :company
  
  # validate :ensure_valid_company
  
  # validates_associated :company
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  # def ensure_valid_company
  #   self.company = Company.new(:name => company_name)
  #   if !company.valid?
  #     errors.add(:company_name, "can't be blank")
  #   end
  # end

end
