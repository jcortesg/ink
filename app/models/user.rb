class User
  include Mongoid::Document
  include Mongoid::Timestamps

  before_validation :subdomain_valid

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email,              :type => String, :default => ""
  field :encrypted_password, :type => String, :default => ""

  ##Personaldata

  field :name ,:type => String
  field :contry , :type => String
  field :state , :type => String
  field :subdomain , :type => String
  
  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time

  ## Rememberable
  field :remember_created_at, :type => Time

  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String

  ##relations

  has_many :books
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
 

  validates_presence_of :name , :contry ,:state , :_type
  validates_presence_of :email
  validates_presence_of :encrypted_password
  
  #validate subdomain

  validates_presence_of :subdomain
  validates_uniqueness_of :subdomain
  validates_exclusion_of :subdomain, :in => %w( www ftp api support blog billing help smtp ), :message => "The subdomain <strong>{{value}}</strong> is reserved and unavailable."
  validates_format_of :subdomain, :with => /^[A-Za-z0-9-]+$/

  #attributes accessibles

  attr_accessible :name, :subdomain ,:email, :password, :password_confirmation, 
                  :remember_me, :created_at, :updated_at , :_type, :contry ,:state


  def subdomain_valid
    self.subdomain = self.subdomain.downcase! if attribute_present?("sundomain")
  end
end
