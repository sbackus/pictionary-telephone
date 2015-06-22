require "rails_helper"

describe Caption do
  it "should include the :text attribute" do
    expect(subject.attributes).to include("text")
  end
end
