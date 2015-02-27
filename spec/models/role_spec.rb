require 'rails_helper'

RSpec.describe Role, type: :model do
  it 'need a user' do
    user = User.new
    role = Role.new
    expect(role).to_not be_valid
    role.users << user
    expect(role).to be_valid
  end
end
