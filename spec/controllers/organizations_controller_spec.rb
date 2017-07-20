require 'rails_helper'
require 'spec_helper'

RSpec.describe OrganizationsController, type: :controller do
  describe '#index' do
    it 'response with success' do
      get :index
      expect(response).to be_successful
    end
  end
end
