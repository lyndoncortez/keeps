require 'spec_helper'

describe Category do
  # current_user = User.first_or_create!(email: 'lyndon@example.com', password: 'password')
  it 'has a title' do
    user = create(:user)
    category = Category.new(
      title: '',
      description: 'neknekmo'
    )
    expect(category).to be_valid
  end
end
