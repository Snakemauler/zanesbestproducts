require 'rails_helper'

describe UsersController, :type => :controller do
  let(:user) {User.create(email: "peter@example.com", password: "1234567890")}

  before do
    @user = User.first
  end

  describe "GET #show" do
    context "User is logged in" do

      before do
        sign_in @user
      end

      it "loads correct user details" do
        get :show, id: @user.id
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end

      it "redirects to root path" do
        get :show, id: @user.id
        expect(response).to have_http_status(200)
      end
    end

    context "No user logged in" do
      it "redirects to login" do
        get :show, id: @user.id
        expect(response).to redirect_to(root_path)
      end
    end
  end
end