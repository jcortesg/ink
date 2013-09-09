class Model < User
  include Mongoid::Document
  field :height, type: Float
  field :chest, type: Float
  field :waist, type: Float
  field :hip, type: Float
  field :talent, type: String
  field :weight, type: Float
  field :languages, type: String
  field :description, type: String
  field	:birthday, type: Date
  field	:firstname, type: String
  field	:lastname , type: String
  field :type , type: String


  attr_accessible :height , :chest , :waist,:hip,:talent,:weight,:languages ,
                  :description ,:birthday ,:firstname , :lastname
end
