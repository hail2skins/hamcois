require 'spec_helper'

describe "slogans/index" do
  before(:each) do
    assign(:slogans, [
      stub_model(Slogan,
        :name => "Name"
      ),
      stub_model(Slogan,
        :name => "Name"
      )
    ])
  end

  it "renders a list of slogans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
