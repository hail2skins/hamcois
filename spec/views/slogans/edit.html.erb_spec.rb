require 'spec_helper'

describe "slogans/edit" do
  before(:each) do
    @slogan = assign(:slogan, stub_model(Slogan,
      :name => "MyString"
    ))
  end

  it "renders the edit slogan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", slogan_path(@slogan), "post" do
      assert_select "input#slogan_name[name=?]", "slogan[name]"
    end
  end
end
