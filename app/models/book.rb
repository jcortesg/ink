class Book
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes
  field :name, type: String
  field :description, type: String
  field :localitation, type: String
  field :photographer, type: String
  field :front, type: String

  belongs_to :user
  has_many  :pictures

  mount_uploader :front, ImageUploader
  accepts_nested_attributes_for :pictures
  validates_presence_of :name 
  validates_associated  :pictures
  
  attr_accessible :name ,:front, :description, :localitation , :photographer , :pictures_attributes

end
