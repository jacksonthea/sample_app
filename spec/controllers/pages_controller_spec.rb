require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  render_views

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "should have the right title" do
      get :home
      expect(response).to have_selector("title", text: "Ruby on Rails Tutorial Sample App | Home", visible: false)
    end

    it "should have a non-blank body" do
      get :home
      expect(response.body).to_not match /<body>\s*<\/body>/
    end
  end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
    it "should have the right title" do
      get :contact
      expect(response).to have_selector("title", text: "Ruby on Rails Tutorial Sample App | Contact", visible: false)
      #expect(response).to have_title("SampleApp")
    end
  end

  describe "GET about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
    it "should have the right title" do
      get :about
      expect(response).to have_selector("title", text: "Ruby on Rails Tutorial Sample App | About", visible: false)
      #expect(response).to have_title("SampleApp")
    end
  end

end