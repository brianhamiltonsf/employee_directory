# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    firstname {}
    lastname "MyString"
    phone "MyString"
    email "MyString"
    address1 "MyString"
    address2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    office_number "MyString"
    title "MyString"
    manager_id 1
    manager false
  end
end
