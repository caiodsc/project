require "rails_helper"

RSpec.describe UsersController, type: :routing do
  describe "routing" do
    it "routes to #create" do
      expect(:post => "/users").to route_to("users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/users/1").to route_to("users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/users/1").to route_to("users#update", :id => "1")
    end

    it "routes to #show_authenticated_user" do
      expect(:get => "/users/me").to route_to("users#show_authenticated_user")
    end

    it "routes to #show_user_by_id" do
      expect(:get => "/users/1").to route_to("users#show_user_by_id", :id => "1")
    end

    it "routes to #change_password" do
      expect(:post => "/users/change_password").to route_to("users#change_password")
    end

    it "routes to #reset_password" do
      expect(:get => "/users/reset_password").to route_to("users#reset_password")
    end

    it "routes to #check_email" do
      expect(:get => "/users/check_email").to route_to("users#check_email")
    end

    it "routes to #private_widgets" do
      expect(:get => "/users/me/widgets").to route_to("users#private_widgets")
    end

    it "routes to #widgets_by_user_id" do
      expect(:get => "/users/1/widgets").to route_to("users#widgets_by_user_id", :id => "1")
    end

    it "routes to #private_widgets with search_term" do
      expect(:get => "/users/me/widgets?search_term=term").to route_to("users#private_widgets", :search_term => "term")
    end

    it "routes to #widgets_by_user_id with search_term" do
      expect(:get => "/users/1/widgets?search_term=term").to route_to("users#widgets_by_user_id", :id => "1", :search_term => "term")
    end

    it "routes to #sign_in" do
      expect(:post => "/users/sign_in").to route_to("users#sign_in")
    end

    it "routes to #sign_out" do
      expect(:get => "/users/sign_out").to route_to("users#sign_out")
    end
  end
end
