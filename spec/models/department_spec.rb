require 'rails_helper'

RSpec.describe Department, :type => :model do

  it { should respond_to(:name) }
  it { should respond_to(:leader_id) }
  it { should respond_to(:slug) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }

  it "is valid with a name" do
    expect(build(:department)).to be_valid
  end

  it 'is invalid without a name' do
    department = build(:department, name: nil)
    department.valid?
    expect(department.errors[:name]).to include("can't be blank")
  end

  it "does not contain duplicate departments" do
    create(:department)
    department = Department.new(name: 'Engineering')
    department.valid?
    expect(department.errors[:name]).to include('has already been taken')
  end

end
