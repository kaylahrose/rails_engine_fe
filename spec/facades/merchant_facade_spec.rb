require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'can returns a collection of merchant data do'
    merchants_data = MerchantFacade.merchant_data

    expect(merchants_data).to be_a Array
  end
end