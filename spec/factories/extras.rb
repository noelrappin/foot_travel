# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :extra do
    trip ""
    name "MyString"
    description "MyText"
    price 1.5
  end
end
