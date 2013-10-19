class Agent < User
  include Mongoid::Document
  field :web, type: String

  has_many :jobs
end
