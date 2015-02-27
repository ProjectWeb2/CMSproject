require 'rails_helper'

RSpec.describe "images/show", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :name => "MyText",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
