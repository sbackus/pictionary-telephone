require "rails_helper"

describe "captions page" do
  it "allows people to enter captions" do
    visit "/captions/new"
    expect(page).to have_content 'Create a caption!'
  end
end