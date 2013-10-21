class Network
  include Mongoid::Document
  field :uid, type: String
  field :red, type: String
  field :username, type: String
  field :token, type: String
  field :secret, type: String

  embedded_in :user
end
