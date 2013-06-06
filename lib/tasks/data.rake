namespace :data do
  task :random => :environment do
    require 'factory_girl_rails'
    
    100.times do
      address = FactoryGirl.create(:address)
      puts "Company: #{address.addressable.name}"
      
      5.times do
        user = FactoryGirl.create(:user, :company => address.addressable)
        FactoryGirl.create(:address, :addressable => user)
        puts "    User: #{user.full_name}"
      end
    end
  end
end