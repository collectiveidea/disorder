class UsersController < ApplicationController
  def new
    @company = Company.new
    @address = Address.new
    @user = User.new
  end
end
