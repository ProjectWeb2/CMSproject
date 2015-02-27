require 'rails_helper'

RSpec.describe "images/edit", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :name => "MyText",
      :description => "MyText"
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "textarea#image_name[name=?]", "image[name]"

      assert_select "textarea#image_description[name=?]", "image[description]"
    end
  end
end
