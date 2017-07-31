require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let (:user) { User.create({ username: 'User', password: 'password' }) }


  describe "GET #new" do
    it "renders new user page" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "GET #index" do
    it "shows all users" do
      get :index
      expect(response).to render_template("index")
    end
  end


    describe "POST #create" do
      it "creates a new user" do
        post :create, params: { user: { username: 'user2', password: 'password2' }}

        expect(response).to redirect_to(user_url(User.all.last))
      end
    end

  describe "GET #show" do
    it "shows the user" do
      get :show, params: { user: {id: 1}}
      expect(response).to redirect_to(user_url(1))
    end
  end



end
