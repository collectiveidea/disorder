class SignupsController < ApplicationController
  def new
    @company = Company.new
    @user = User.new
  end

  def create
    @company = Company.new(params[:company])
    @user = User.new(params[:user])
    signup = Signup.new(@company, @user)
    signup.run  
  end
end
