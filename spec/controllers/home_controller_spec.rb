require 'rails_helper'
require 'spec_helper'

RSpec.describe HomeController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe HomeController do
    render_views

    describe "GET #index" do
      it "says 'About'" do
        get :index
        response.body.should =~ /About/m
      end
    end
  end

end
