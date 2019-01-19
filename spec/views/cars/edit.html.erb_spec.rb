require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :make => "MyString",
      :model => "MyString",
      :year => 1
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input[name=?]", "car[make]"

      assert_select "input[name=?]", "car[model]"

      assert_select "input[name=?]", "car[year]"
    end
  end
end
