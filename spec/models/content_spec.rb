require 'rails_helper'

RSpec.describe Content, type: :model do
  it 'need a contentperpage' do
    contentperpage = Contentperpage.new
    content = Content.new text: 'new Content Test'

    expect(content).to_not be_valid
    content.contentperpage << contentperpage
    expect(content).to be_valid
  end
end
