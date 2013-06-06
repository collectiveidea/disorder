class SignupsController < ApplicationController
  def new
    @company = Company.new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    @company = @user.company
    if @user.save
      # @company.save!
    else
      render 'new'
    end
  end
end
