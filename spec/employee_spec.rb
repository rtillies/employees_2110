# ./spec/employee_spec.rb
require './lib/employee'

describe Employee do
  before(:each) do
    @new_emp = Employee.new("Richard", 729)
  end

  it 'exists' do
    expect(@new_emp).to be_instance_of(Employee)
  end

  it 'attributes' do
    expect(@new_emp.name).to eq("Richard")
    expect(@new_emp.id_number).to eq(729)
  end

  it '#annual_salary' do
    expect(@new_emp.annual_salary).to eq(-1)
  end
end
