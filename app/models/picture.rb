class Picture
  include Mongoid::Document
  field :url, type: String
  field :place, type: String

  embedded_in :book
end
