
namespace :db do 
  desc "Clear the DB and fill with sample data"
  
  task :populate => :enviroment do 
    require 'populator'
    require 'faker'
  [Dog,Owner,Vet].each {do |i| i.destroy_all}

  Dogs.all.each do |dog|

    dog.breed = Faker::
    dog.dob = Faker::
    dog.vet = Faker::
    dog.medical_info = Faker::
    dog.in_daycare = Faker::

    Owner.populate 5..10 do |owner|
      owner.name = Faker::Name.first_name
      owner.last_name = Faker:: 
      owner.primary_phone = Faker:: 
      owner.secondary_phone = Faker:: 
      owner.address = Faker:: 
      owner.city = Faker:: 
      owner.state = Faker:: 
      owner.zip = Faker:: 
      owner.emerg_name = Faker:: 

      Vet.populate 5..10
        vet.name = Faker::
        vet.clinic = Faker::
        vet.phone = Faker:: 
    
      end
    end
  end 
end