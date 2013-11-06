class Job
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes
  field :name, type: String
  field :description, type: String
  field :date_end, type: Date
  field :status, type: String
  field :ubication, type: String
  field :picture, type: String
  field :address, type: String
  field :description_all, type: String
  belongs_to :agent
  has_and_belongs_to_many :users

  mount_uploader :picture, ImageUploader

end
