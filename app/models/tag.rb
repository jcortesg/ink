class Tag
  include Mongoid::Document
  field :name, type: String
  field	:profile, type: String
   has_and_belongs_to_many :users
end
