class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end
  
  def create
    @signup = Signup.new(params[:signup])
    @signup.save
  end
end
