class Signup
  def initialize(company, user)
    @company = company
    @user = user
  end
  
  def run
    if @company.valid? && @user.valid?
      @company.save!
      @user.save!
      true
    else
      false
    end
  end
end