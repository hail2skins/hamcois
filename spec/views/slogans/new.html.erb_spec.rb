require 'spec_helper'

describe "slogans/new" do
  before(:each) do
    assign(:slogan, stub_model(Slogan,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new slogan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", slogans_path, "post" do
      assert_select "input#slogan_name[name=?]", "slogan[name]"
    end
  end
end
