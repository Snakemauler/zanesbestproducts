require 'rails_helper'

describe UsersController, :type => :controller do
  
  before do 
    @user = User.create(email: "peter@example.com", password: "1234567890")
    @user2 = User.create(email: "exampleemail2@example.com", password: "123456789")
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
        get :show, id: @user2.id
        expect(response).to redirect_to(root_path)
        expect(response).to have_http_status(302)
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