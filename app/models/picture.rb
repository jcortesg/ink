class Picture
  include Mongoid::Document
  field :url, type: String
  field :place, type: String
  field :name, type: String
  field :description, type: String


  validates_presence_of :url 
  belongs_to :book

  mount_uploader :url, ImageUploader
  attr_accessible :url
  

end	
