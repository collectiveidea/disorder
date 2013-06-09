class Address < ActiveRecord::Base
  attr_accessible :city, :addressable_id, :addressable_type, :country, :postal_code, :region, :street_line_1, :street_line_2

  belongs_to :addressable, :polymorphic => true, :touch => true
end
