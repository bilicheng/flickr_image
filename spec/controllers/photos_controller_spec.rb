require 'rails_helper'

RSpec.describe PhotosController, :type => :controller do

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PhotosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end

    it 'alert messages if you search for the empty' do
      get :index, {:search => ''}
      expect(flash[:alert]).to be_present
    end
        
  end

end
