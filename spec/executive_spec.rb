# ./spec/staff_spec.rb
require './lib/executive'
require './lib/employee'

describe Executive do
  before(:each) do
    @ceo = Executive.new("Jeff", 1, 10_000.0)
  end

  it 'exists' do
    expect(@ceo).to be_instance_of(Executive)
  end

  it 'attributes' do
    expect(@ceo.name).to eq("Jeff")
    expect(@ceo.id_number).to eq(1)
    expect(@ceo.monthly_salary).to eq(10000.0)
  end

  it '#annual_salary' do
    expect(@ceo.annual_salary).to eq(132_000.0)
  end
end
