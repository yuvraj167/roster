require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :emp_id => "Emp",
        :mobile_no => "Mobile No",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation"
      ),
      User.create!(
        :name => "Name",
        :emp_id => "Emp",
        :mobile_no => "Mobile No",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Emp".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile No".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Password Confirmation".to_s, :count => 2
  end
end
