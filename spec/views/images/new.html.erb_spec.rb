require 'rails_helper'

RSpec.describe "images/new", type: :view do
  before(:each) do
    assign(:image, Image.new(
      :name => "MyText",
      :description => "MyText"
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "textarea#image_name[name=?]", "image[name]"

      assert_select "textarea#image_description[name=?]", "image[description]"
    end
  end
end
