class Job
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :date_end, type: String
  field :status, type: String
  field :ubication, type: String
  field :picture, type: String
  field :address, type: String
  belongs_to :agent

  mount_uploader :picture, ImageUploader

end
