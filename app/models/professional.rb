class Professional < User
  include Mongoid::Document
  field :languages, type: String
  field :description, type: String
  field	:birthday, type: Date
  field	:firstname, type: String
  field	:lastname , type: String
  field :genre, :type =>String
  field :nationality, :type => String
  field :profetion, :type => String

  attr_accessible :profetion,:nationality,:genre,:birthday,:languages,:description,:firstname,:lastname
end
