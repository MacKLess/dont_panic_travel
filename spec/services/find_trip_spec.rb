require 'rails_helper'

describe Destination do
  it 'returns a 200 success header when the API call is made' do
    response = Destination.get_all
    expect(response.code).to(eq(200))
  end
end
