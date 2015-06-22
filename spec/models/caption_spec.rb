require "rails_helper"

describe Caption do
  it "should include the :text attribute" do
    expect(subject.attributes).to include("text")
  end

  it "should have valid factory" do
    FactoryGirl.build(:caption).should be_valid
  end

  it "should require text" do
      FactoryGirl.build(:caption, :text => "").should_not be_valid
  end
end
