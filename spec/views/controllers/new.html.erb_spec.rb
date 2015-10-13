require 'rails_helper'

RSpec.describe "controllers/new", type: :view do
  before(:each) do
    assign(:controller, Controller.new(
      :sample => "MyString"
    ))
  end

  it "renders new controller form" do
    render

    assert_select "form[action=?][method=?]", controllers_path, "post" do

      assert_select "input#controller_sample[name=?]", "controller[sample]"
    end
  end
end
