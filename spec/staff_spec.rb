# ./spec/staff_spec.rb
require './lib/staff'
require './lib/employee'

describe Staff do
  before(:each) do
    @staff_1 = Staff.new("Tracey", 123, 25.0, 40.0)
  end

  it 'exists' do
    expect(@staff_1).to be_instance_of(Staff)
  end

  it 'attributes' do
    expect(@staff_1.name).to eq("Tracey")
    expect(@staff_1.id_number).to eq(123)
    expect(@staff_1.hourly_wage).to eq(25.0)
    expect(@staff_1.number_hours).to eq(40.0)
  end

  it '#annual_salary' do
    expect(@staff_1.annual_salary).to eq(52_000)
  end
end
