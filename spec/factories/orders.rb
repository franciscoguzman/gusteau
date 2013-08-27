# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    table_id 1
    discount "9.99"
    total "9.99"
  end
end
