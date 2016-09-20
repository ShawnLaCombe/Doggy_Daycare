
namespace :db do 
  desc "Clear the DB and fill with sample data"
  
  task :populate => :enviroment do 
    require 'populator'
    require 'faker'
    [Dog,Owner,Vet].each { |i| i.destroy_all}

    Breed.all.each do |breed|

      Vet.populate do |vet|
          vet.name = Faker::Name.name
          vet.clinic = Faker::Team.name
          vet.phone = Faker::Number.number(10) 

        Dog.populate(5..10) do |dog|

          dog.breed_id = breed.id
          dog.dob = Faker::Faker::Date.between_except(10.year.ago, 1.year.from_now, Date.today)
          dog.vet_id = vet.id 
          dog.medical_info = Faker::Lorem.sentences
          dog.in_daycare = false

          Owner.populate 1..2 do |owner|
            owner.first_name = Faker::Name.first_name
            owner.last_name = Faker::Name.name 
            owner.primary_phone = Faker::Number.number(10)
            owner.secondary_phone = Faker::Number.number(10)
            owner.address = Faker::Address.street_address 
            owner.city = Faker::Address.city  
            owner.state = Faker::Address.state_abbr 
            owner.zip = Faker::Address.zip_code 
            owner.emerg_name = Faker::Name.name 

            Custody.populate do |custody|
              dog_id = dog.id
              owner_id = owner.id
            end # Custody End
          end # Owner End
        end # Dog End   
      end # Vet End
    end # Breed End
  end #task end
end # namespace





    
