require "rails_helper"

describe CaptionsController do
  describe "POST create" do
    context "with valid attributes" do
      it "creates a new caption" do
        expect{ post :create, caption: FactoryGirl.attributes_for(:caption) }.to change(Caption,:count).by(1)
      end

      # it "redirects to a new drawing page" do
      # end

    end
    context "with invalid attributes" do

      it "does not save the new caption" do
        expect{ post :create, caption: {text: ""} }.to_not change(Caption,:count)
      end

      it "re-renders the new method" do
        expect( post :create, caption: {text: ""}).to render_template :new
      end

    end

  end
end
