# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    phone "(555) 123-4567"
    email { Faker::Internet.email }
    office_number "A101"
    title 'Manager'
    manager_id 1
    manager false
    department_id 1
    location_id 1
  end
end
