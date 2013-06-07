class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @companies.to_xml(:include => :users) }
      format.json { render :json => @companies.to_json(:include => [:users, :addresses]) }
      format.csv do
        data = "Name,Website\n"
        @companies.each do |company|
          data << "#{company.name},#{company.website}\n"
        end
        render :text => data, :filename => 'company_export.csv'
      end
    end
  end
end
