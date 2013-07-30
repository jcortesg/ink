require 'spec_helper'

describe Model do

	before(:each) do
		@attr = {
		:height =>  1.5,
	    :chest =>  1.5,
	    :waist =>  1.5,
	    :hip =>  1.5,
	    :talent =>  "MyString",
	    :weight =>  1.5,
	    :languages =>  "MyString",
	    :description =>  "MyString",
	    :email =>  "mails@example.com",
	    :name  => 'Test User',
	    :email =>  'example@example.com',
	    :password =>  'changeme',
	    :password_confirmation =>  'changeme',
	    :subdomain =>  'example'
		}
	end

	it "should reject if require fields is nil " do
		should validate_presence_of :contry 
		should validate_presence_of :state 
		should validate_presence_of :_type 
	end

	it "should have book's association " do
		should validate_associated :books
	end

	it "should accepts nested attributes" do
		should accept_nested_attributes_for :books
	end

end
