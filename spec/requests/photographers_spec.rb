require 'spec_helper'

describe "Photographers" do
  describe "GET /photographers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get photographers_path
      response.status.should be(200)
    end
  end
end
