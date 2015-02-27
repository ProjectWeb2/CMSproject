require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'need a contentperpage' do
    contentperpage = Contentperpage.new
    menu = Menu.new name: 'Menu1Test'
    expect(menu).to_not be_valid
    menu.contentperpage << contentperpage
    expect(menu).to be_valid
  end
  it 'need a site' do
    site = Site.new
    menu = Menu.new name: "MenuTest"
    expect(menu).to_not be_valid
    menu.sites << site
    expect(menu).to be_valid
  end
  it 'need a location' do
    location = Location.new
    menu = Menu.new name: "MenuTest"
    expect(menu).to_not be_valid
    menu.location << location
    expect(menu).to be_valid
  end
  it 'need a typ' do
    typ = Typ.new
    menu = Menu.new name: "MenuTest"
    expect(menu).to_not be_valid
    menu.typ << typ
    expect(menu).to be_valid
  end
end
