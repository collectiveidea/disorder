class Address < ActiveRecord::Base
  attr_accessible :city, :company_id, :country, :postal_code, :region, :street_line_1, :street_line_2
end
