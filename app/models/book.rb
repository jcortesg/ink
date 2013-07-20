class Book
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :localitation, type: String
  field :photographer, type: String

  belongs_to :user
  embeds_many  :pictures

  accepts_nested_attributes_for :pictures
  validates_presence_of :name 
  validates_associated  :pictures
  
  attr_accessible :name , :description, :localitation , :photographer , :pictures

end
