class Tag
  include Mongoid::Document
  field :name, type: String
  field	:profile, type: String
  belongs_to :users
end
