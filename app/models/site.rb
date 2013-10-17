class Site
  include Mongoid::Document
  attr_writer :current_step

  field :visit, type: Integer
  field :title, type: String
  field :keywords, type: String
  field	:description, type: String
  field :subdomain, type: String
  field	:logo, type: String
  field	:slogan, type: String
  field :bg, type: String
  
  belongs_to :user
  mount_uploader :bg, BgUploader
  attr_accessible :bg, :visit, :title, :description, :subdomain, :logo, :slogan


end
