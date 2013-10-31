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
  field :age, type: Integer
  field :genre, :type =>String
  field :nationality, :type => String
  field :eye_color, :type => Float
  field :skin, :type => String
  field :hair_color , :type=> String
  field :hair_length, :type => String



  attr_accessible :eye_color,:skin,:hair_length,:hair_color,:nationality,:genre,:height , :chest , :waist,:hip,:talent,:weight,:languages ,
                  :description ,:birthday ,:firstname , :lastname, :age
end
