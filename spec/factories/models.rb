# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :model do
    height 1.5
    chest 1.5
    waist 1.5
    hip 1.5
    talent "MyString"
    weight 1.5
    languages "MyString"
    description "MyString"
    email "mails@example.com"
    name 'Test User'
    email 'example@example.com'
    password 'changeme'
    password_confirmation 'changeme'
  end
end
