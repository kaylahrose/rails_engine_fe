require 'rails_helper'

RSpec.describe 'merchant index page' do
  it 'lists all merchants with link to show pages' do
    visit merchants_path

    within('#merchants') do
      expect(page).to have_content('Schroeder-Jerde')
      click_link "Schroeder-Jerde"
    end

    expect(current_path).to eq(merchant_path(1))
  end
end
