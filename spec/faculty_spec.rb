# ./spec/staff_spec.rb
require './lib/faculty'
require './lib/employee'

describe Faculty do
  before(:each) do
    @teacher_1 = Faculty.new("Dani", 256, 2500.0)
    @teacher_1.add_course("Ruby")
    @teacher_1.add_course("Rails")
    @teacher_1.add_course("JavaScript")
    @teacher_1.add_course("HTML5")
  end

  it 'exists' do
    expect(@teacher_1).to be_instance_of(Faculty)
  end

  it 'attributes' do
    expect(@teacher_1.name).to eq("Dani")
    expect(@teacher_1.id_number).to eq(256)
    expect(@teacher_1.per_class_rate).to eq(2500.0)
    expect(@teacher_1.courses).to eq(["Ruby", "Rails", "JavaScript", "HTML5"])
  end

  it '#annual_salary' do
    expect(@teacher_1.annual_salary).to eq(10_000.0)
  end
end
