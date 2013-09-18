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
  
  belongs_to :user

  attr_accessible :visit, :title, :description, :subdomain, :logo, :slogan

  def current_step
    @current_step || steps.first
  end

  def steps
    %w{general description book jobs}
  end

  def next_step
  	self.current_step = steps[steps.index(current_step)+1]
  end
  def previous_step
  	self.current_step = steps[steps.index(current_step)-1]
  end

  def last_step?
  	current_step == steps.last
  end

  def first_step?
  	current_step == steps.first
	end

end
