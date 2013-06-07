class CompanySerializer < ActiveModel::Serializer
  cached
  attributes :name, :website, :id, :created_at
  
  has_many :users
  has_many :addresses
end