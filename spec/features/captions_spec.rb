require "rails_helper"

describe "captions page" do
  it "allows people to enter captions" do
    visit "/captions/new"
    expect(page).to have_content 'Create a caption!'
    fill_in "caption_text", :with => "A tea party on the moon"
    click_button "Create"
    expect(page.status_code).to eq 200
  end
end
