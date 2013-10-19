class User
  include Mongoid::Document
  include Mongoid::Timestamps


  
  #before_validation :subdomain_valid

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable ,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email,              :type => String
  field :encrypted_password, :type => String

  ##Personaldata

  field :name ,:type => String
  field :lastname, :type => String
  field :nationality, :type => String
  field :ubication , :type => String
  field :subdomain , :type => String
  field :description, :type => String
  field :zip_code, :type => Integer
  field :address, :type => String
  field :tel, :type => Integer
  field :cel, :type => Integer
  field :_type, :type => String
  field :active, :type => Boolean, :default => false

  ## Site Data
  field :general_description , :type => String
  field :professional_description , :type => String 
  
  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time

  ## Rememberable
  field :remember_created_at, :type => Time
  field :ubication ,:type => String
  field :address, :type => String
  field :tel, :type => Integer
  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String
  field :_type, :type => String, :default => "Model"
  ##picture

  field :photo, :type => String
  ##relations

  has_many :books
  has_one :site 

  

  ## Confirmable
  # field :confirmation_token,   :type => String
  # field :confirmed_at,         :type => Time
  # field :confirmation_sent_at, :type => Time
  # field :unconfirmed_email,    :type => String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  # field :locked_at,       :type => Time

  ## Token authenticatable
  # field :authentication_token, :type => String
  # run 'rake db:mongoid:create_indexes' to create indexes
  index({ email: 1 }, { unique: true, background: true })
 

  ## aceppts attributes
  accepts_nested_attributes_for :books 
  accepts_nested_attributes_for :site

  ##validate
  validates_presence_of :name 
  validates_presence_of :email
  validates_presence_of :encrypted_password
  #validates_presence_of :description

  mount_uploader :photo, ImageUploader
  #validate subdomain

  #validates_presence_of :subdomain
  #validates_uniqueness_of :subdomain
  #validates_exclusion_of :subdomain, :in => %w( www ftp api support blog billing help smtp ), :message => "The subdomain <strong>{{value}}</strong> is reserved and unavailable."
  #validates_format_of :subdomain, :with => /^[A-Za-z0-9-]+$/

  #attributes accessibles

  attr_accessible :profetion_description,:address,:tel,:general_description,:photo, :name, :subdomain ,:email, :password, :password_confirmation, 
                  :remember_me,:ubication, :created_at, :updated_at , :_type, :contry ,:state ,:site_attributes,:description

  def subdomain_valid
    self.subdomain = self.subdomain.downcase! if attribute_present?("sundomain")
  end
end
