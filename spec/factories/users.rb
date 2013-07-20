# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    password 'changeme'
    password_confirmation 'changeme'
    subdomain 'example'
    contry 'comlombia'
    state 'bogota'
    _type 'Model'
    description 'description'
   
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end
end
