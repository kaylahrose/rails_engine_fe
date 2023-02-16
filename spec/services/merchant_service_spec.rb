require 'rails_helper'

RSpec.describe MerchantService do
  it 'can return merchants info' do
    merchants = MerchantService.get_merchants

    expect(merchants).to be_a Hash
    expect(merchants).to have_hey(:data)
    expect(merchants[:data]).to be_a Array

    expect(merchant).to have_key(:attributes)
    expect(merchants[:attributes]).to have_key(:name)
    expect(merchants[:attributes]).to be_a String
  end
end