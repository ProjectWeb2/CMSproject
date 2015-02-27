require 'rails_helper'

RSpec.describe Location, type: :model do
  it 'need a menu' do
    menu = Menu.new name: 'MenuTest'
    location = Location.new
    expect(location).to_not be_valid
    location.menu << menu
    expect(location).to be_valid
  end
end
