class Api::CompaniesController < ApplicationController

  def index
    ActiveSupport::Notifications.instrument "company.find" do
      @companies = Company.all
    end
    
    render :json => @companies
  end
  
  
  def show
    @company = Company.find(params[:id])
    render :json => @company
  end
end
