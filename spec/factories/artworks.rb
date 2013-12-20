# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artwork do
    artist_id 1
    created_date "2013-12-20"
    placed_on_sale_date "2013-12-20"
    cost 1
    customer_id 1
    type_of_art "MyString"
    available false
    collection_id 1
  end
end
