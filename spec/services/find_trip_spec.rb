require 'rails_helper'

describe Destination, :vcr => true do
  it 'returns a 200 success header when the API call is made' do
    destination = Destination.new()
    response = destination.get_all
    expect(response.code).to(eq(200))
  end
end
