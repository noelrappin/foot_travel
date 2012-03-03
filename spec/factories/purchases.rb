# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :purchases do
    user nil
    trip nil
    purchase_date "2012-03-02"
    real_travel_date "2012-03-02"
    amount 1.5
  end
end
