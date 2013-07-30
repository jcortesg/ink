require 'spec_helper'

describe Book do


	before(:each) do
		@attr ={
			:name => "U Book",
			:description => "Description",
			:localitation => "localitation",
			:photographer => "photographer"
		}
	end

	describe "Vadidate ralations" do
		
	  it "should validate accept nested attributes" do
	  	should accept_nested_attributes_for  :pictures
		end
	end

	describe "necessary fields" do

		it "should validate field " do
			should validate_presence_of :name
		end

		it "should validate_associated" do
			should validate_associated :pictures
		end
	end

end
