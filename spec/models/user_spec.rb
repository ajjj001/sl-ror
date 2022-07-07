require 'rails_helper'


RSpec.describe UsersController, type: :controller do
  describe "GET index" do
    it "returns a 200" do
      get :index, :format => :json
      expect(response).to have_http_status(:ok)
    end
  end
end


RSpec.describe User, type: :model do
  it "is invalid without a first name" do
    user = User.new(firstName: nil)
    expect(user.valid?).to be true
  end
end
