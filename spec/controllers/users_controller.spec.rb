require 'rails_helper'

describe UserController, :type => :controller do 
    @user = FactoryGirl.create(:user)

  describe "GET #show" do
    context "user is logged in" do
      before do
        sign_in @user
      end

      it "load correct user details" do
        get :show, params: {id: @user.id}
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end
    end

    context "no user is logged in" do
      it "redirects to login" do
        get :show, id: user.id
        expect(response).to redirect_to(root_path)
      end
    end

    context "current user is cannot access other user show page" do
      before do
        sign_in @user
      end

      it "redirects to root" to
        get :show, params: { id: @user.id }
        expect(response).to have_http_status(200)
        redirect_to(fallback_location: root_path)
      end
    end

  end
end