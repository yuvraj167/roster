require 'rails_helper'

RSpec.describe "controllers/index", type: :view do
  before(:each) do
    assign(:controllers, [
      Controller.create!(
        :sample => "Sample"
      ),
      Controller.create!(
        :sample => "Sample"
      )
    ])
  end

  it "renders a list of controllers" do
    render
    assert_select "tr>td", :text => "Sample".to_s, :count => 2
  end
end
