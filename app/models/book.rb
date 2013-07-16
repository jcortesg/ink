class Book
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :localitation, type: String
  field :photographer, type: String

  belongs_to :users
  embeds_many  :pictures

end
