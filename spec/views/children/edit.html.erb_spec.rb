require 'spec_helper'

describe "children/edit" do
  before(:each) do
    @child = assign(:child, stub_model(Child,
      :full_name => "MyString",
      :email => "MyString",
      :height => 1,
      :shoes => 1,
      :hair => "MyString",
      :eyes => "MyString",
      :confirmed => false
    ))
  end

  it "renders the edit child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => children_path(@child), :method => "post" do
      assert_select "input#child_full_name", :name => "child[full_name]"
      assert_select "input#child_email", :name => "child[email]"
      assert_select "input#child_height", :name => "child[height]"
      assert_select "input#child_shoes", :name => "child[shoes]"
      assert_select "input#child_hair", :name => "child[hair]"
      assert_select "input#child_eyes", :name => "child[eyes]"
      assert_select "input#child_confirmed", :name => "child[confirmed]"
    end
  end
end
