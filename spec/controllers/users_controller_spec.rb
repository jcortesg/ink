require 'spec_helper'

describe UsersController do

  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "GET 'show'" do
    
    it "should be successful" do
      get :show, :id => @user.id
      response.should be_success
    end
    
  end

  describe "GET redirect in register" do

    it "should be redirect_to finish profile" do
      get :redirect_register, :_type => @user._type
      response.should be_success
    end
  end

end
