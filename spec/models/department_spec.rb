require 'rails_helper'

RSpec.describe Department, :type => :model do

  it "is valid with a name" do
    expect(build(:department)).to be_valid
  end

  it 'is invalid without a name' do
    department = build(:department, name: nil)
    department.valid?
    expect(department.errors[:name]).to include("can't be blank")
  end

  it "is invalid with a department name longer than 30 characters" do
    department = build(:department, name: 'a' * 31)
    department.valid?
    expect(department.errors[:name]).to include("is too long (maximum is 30 characters)")
  end

  it "does not contain duplicate departments" do
    create(:department)
    department = Department.new(name: 'Engineering')
    department.valid?
    expect(department.errors[:name]).to include('has already been taken')
  end

end
