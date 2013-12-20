# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    name "MyString"
    email "MyString"
    amount_spent 1
  end
end
