class Photographer
  include Mongoid::Document
  field :language, type: String
  field :specialties, type: String
end
