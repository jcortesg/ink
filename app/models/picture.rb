class Picture
  include Mongoid::Document
  field :url, type: String
  field :place, type: String
  field :name, type: String
  field :description, type: String

  validates_presence_of :url 
  embedded_in :book

end
