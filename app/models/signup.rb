class Signup
  include ActiveModel::Validations
  include ActiveModel::Conversion  
  extend ActiveModel::Naming
  
  delegate :name, :to => :company, :prefix => "company"
  delegate :first_name, :to => :user
  delegate :last_name, :to => :user
  delegate :email, :to => :user
  
  validates :company_name, :presence => true
  validates :email, :presence => true

  def initialize(attributes = {})
    @company = Company.new
    @user = User.new
    @user.company = @company
    set_attributes(attributes)
  end
  
  def company
    @company
  end
  
  def user
    @user
  end

  def save
    if @company.valid? && @user.valid?
      @company.save!
      @user.save!
      true
    else
      false
    end
  end

  def persisted?  
    false  
  end 

  private
  
  def set_attributes(attributes)
    @company.name = attributes[:company_name]
    @user.first_name   = attributes[:first_name]
    @user.last_name    = attributes[:last_name]
    @user.email        = attributes[:email]
  end
end