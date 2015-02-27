require 'rails_helper'

RSpec.describe Contentperpage, type: :model do
  context 'needs a content' do
    it 'need a content' do
      content = Content.new text: 'Test'
      contentperpage = Contentperpage.new

      expect(contentperpage).to_not be_valid

      contentperpage.contents << content
      expect(contentperpage).be_valid
    end
    it 'need a menu' do
      menu = Menu.new name: 'menuTest'
      contentperpage = Contentperpage.new

      expect(contentperpage).to_not be_valid

      contentperpage.menus << menu
      expect(contentperpage).be_valid
    end
  end
end
