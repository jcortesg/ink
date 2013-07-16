class Agent
  include Mongoid::Document
  field :addres, type: String
  field :tel, type: String
  field :description, type: String
  field :web, type: String
end
