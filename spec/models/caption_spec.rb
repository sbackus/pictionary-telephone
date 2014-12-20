require "rails_helper"

describe Caption do
  it "should include the :title attribute" do
    expect(subject.attributes).to include("text")
  end
end