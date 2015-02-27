require 'rails_helper'

RSpec.describe Typ, type: :model do
  it 'need a menu' do
    menu = Menu.new name: 'MenuTest'
    typ = Typ.new
    expect(typ).to_not be_valid
    typ.menu << menu
    expect(typ).to be_valid
  end
end
