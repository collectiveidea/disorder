class UserSerializer < ActiveModel::Serializer
  attributes :full_name, :age, :id, :created_at, :email
  
  has_many :addresses
  
  def age
    if object.age && object.age >= 18
      object.age
    else
      "MINOR"
    end
  end
end