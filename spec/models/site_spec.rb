require 'rails_helper'

RSpec.describe Site, type: :model do
  it 'need a menu' do
    menu = Menu.new name: 'MenuTest'
    site = Site.new
    expect(site).to_not be_valid
    site.menus << menu
    expect(site).to be_valid
  end
end
