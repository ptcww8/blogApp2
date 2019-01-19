require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :make => "Make",
        :model => "Model",
        :year => 2
      ),
      Car.create!(
        :make => "Make",
        :model => "Model",
        :year => 2
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
