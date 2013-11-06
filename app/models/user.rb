class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes

  #before_validation :subdomain_valid

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email,              :type => String , :default =>""
  field :encrypted_password, :type => String

  ##Personaldata

  field :name ,:type => String
  field :firstname, :type => String
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
  
  ##Social data
  field :tw, :type => String
  field :provider, :type => String
  field :facebook, :type => String
  field :twitter, :type => String
  field :google, :type => String
  field :instagram, :type => String
  
  ## flag for profile
  field :check, :type => Boolean, :default => false
  ## Site Data
  field :specialty, :type => String
  field :general_description , :type => String
  field :professional_description , :type => String 
  
  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time

  ## Rememberable
  field :remember_created_at, :type => Time
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
  has_and_belongs_to_many :tags
  has_one :site
  embeds_many :networks
  has_and_belongs_to_many :jobs

  

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

  attr_accessible :tag_ids, :check,:instagram,:google,:twitter,:facebook,:specialty,:firstname,:tw,:provider, :professional_description,:address,:tel,:general_description,:photo, :name, :subdomain ,:email, :password, :password_confirmation, 
                  :remember_me,:ubication, :created_at, :updated_at , :_type, :contry ,:state ,:site_attributes,:description

  def subdomain_valid
    self.subdomain = self.subdomain.downcase! if attribute_present?("sundomain")
  end



  def self.find_for_oauth(auth, signed_in_resource=nil)
    user = User.where(email: auth.info.email).first
    unless user
      user = User.create!(
        name: auth.info.name,
        email: auth.info.email,
        password:Devise.friendly_token[0,20],
        provider:auth.provider
        )
    end

    user
  end

    def self.new_with_session(params, session)
      if session["devise.user_attributes"]
        new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
      user.valid?
      end
      else
        super
      end
    end

end
