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
    email "hola@example.com"
    name 'Test User'
    password 'changeme'
    password_confirmation 'changeme'
    subdomain 'example'
    contry 'colombia'
    state 'bogota'
    _type 'Model'
  end
end
