# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    phone "5551234567"
    email { Faker::Internet.email }
    address1 { Faker::Address.street_address }
    address2 { Faker::Address.secondary_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip "12345"
    office_number "A101"
    title 'Manager'
    manager_id 1
    manager false
    department_id 1
  end
end
