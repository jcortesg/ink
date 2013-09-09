class Site
  include Mongoid::Document
  field :visit, type: Integer
  field :title, type: Integer
  field :keywords, type: Integer
  field	:description, type: Integer
  field :subdomain, type: Integer
  field	:logo, type: String
  field	:slogan, type: String
  belongs_to :user
end
