require 'rails_helper'

describe Trip do
  it { should validate_presence_of :location }
  it { should validate_presence_of :planet }
  it { should validate_presence_of :locals }
  it { should validate_presence_of :transportation }
  it { should have_many :reviews }
end
