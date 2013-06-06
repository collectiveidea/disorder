FactoryGirl.define do
  factory :company do
    name {Faker::Company.name}
    website {"http://#{Faker::Internet.domain_name}"}
  end
  
  factory :user do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    email {Faker::Internet.safe_email}
    sequence(:age) {|n| 10 + n }
    association :company
  end
  
  factory :address do
    street_line_1 {Faker::Address.street_address}
    city {Faker::Address.city}
    region {Faker::Address.state}
    postal_code {Faker::Address.zip_code}
    association :addressable, :factory => :company
  end
end