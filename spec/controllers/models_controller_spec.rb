require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ModelsController do

  # This should return the minimal set of attributes required to create a valid
  # Model. As you add validations to Model, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "height" => "1.5",
      "chest" => "1.5",
      "waist" => "1.5",
      "hip" => "1.5",
      "talent" => "MyString",
      "weight" => "1.5",
      "languages" => "MyString"
     }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ModelsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all models as @models" do
      model = FactoryGirl.create(:model) 
      get :index, {}, valid_session
      assigns(:models).should eq([model])
    end
  end

  describe "GET show" do
    it "assigns the requested model as @model" do
      model = FactoryGirl.create(:model) 
      get :show, {:id => model.to_param}, valid_session
      assigns(:model).should eq(model)
    end
  end


  describe "GET edit" do
    it "assigns the requested model as @model" do
      model = FactoryGirl.create(:model) 
      get :edit, {:id => model.to_param}, valid_session
      assigns(:model).should eq(model)
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested model" do
        model = FactoryGirl.create(:model)
        # Assuming there are no other models in the database, this
        # specifies that the Model created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Model.any_instance.should_receive(:update_attributes).with({ "height" => "1.5" })
        put :update, {:id => model.to_param, :model => { "height" => "1.5" }}, valid_session
      end

      it "assigns the requested model as @model" do
        model = FactoryGirl.create(:model)
        put :update, {:id => model.to_param, :model => valid_attributes}, valid_session
        assigns(:model).should eq(model)
      end

      it "redirects to the model" do
        model =  FactoryGirl.create(:model)
        put :update, {:id => model.to_param, :model => valid_attributes}, valid_session
        response.should redirect_to(model)
      end
    end

    describe "with invalid params" do
      it "assigns the model as @model" do
        model = FactoryGirl.create(:model)
        # Trigger the behavior that occurs when invalid params are submitted
        Model.any_instance.stub(:save).and_return(false)
        put :update, {:id => model.to_param, :model => { "height" => "invalid value" }}, valid_session
        assigns(:model).should eq(model)
      end

      it "re-renders the 'edit' template" do
        model = FactoryGirl.create(:model)
        # Trigger the behavior that occurs when invalid params are submitted
        Model.any_instance.stub(:save).and_return(false)
        put :update, {:id => model.to_param, :model => { "height" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested model" do
      model = FactoryGirl.create(:model) 
      expect {
        delete :destroy, {:id => model.to_param}, valid_session
      }.to change(Model, :count).by(-1)
    end

    it "redirects to the models list" do
      model = FactoryGirl.create(:model) 
      delete :destroy, {:id => model.to_param}, valid_session
      response.should redirect_to(models_url)
    end
  end

end