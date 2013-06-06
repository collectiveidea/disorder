namespace :data do
  task :random => :environment do
    require 'factory_girl_rails'
    
    100.times do
      address = FactoryGirl.create(:address)
      puts "Company: #{address.addressable.name}"
      
      rand(6).times do
        user = FactoryGirl.create(:user, :company => address.addressable)
        rand(4).times do
          FactoryGirl.create(:address, :addressable => user)
        end
        puts "    User: #{user.full_name}"
      end
    end
  end
end