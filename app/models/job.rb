class Job
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :date_end, type: String
  field :status, type: String
end
