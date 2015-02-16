require 'rails_helper'

RSpec.describe Employee, :type => :model do

  it "is valid with a first name and a last name" do
    expect(build(:employee)).to be_valid
  end

  it "is invalid without a first name" do
    emp = build(:employee, firstname: nil)
    emp.valid?
    expect(emp.errors[:firstname]).to include("can't be blank")
  end

  it "is invalid without a last name" do
    emp = build(:employee, lastname: nil)
    emp.valid?
    expect(emp.errors[:lastname]).to include("can't be blank")
  end

  it "belongs to a department" do
    expect(build(:employee)).to belong_to(:department)
  end

  it "returns the first and last name as a string" do
    expect(build(:employee,firstname: 'First', lastname: 'Last').name).to eq 'First Last'
  end

  it "does not contain duplicate email addresses" do
    create(:employee, email: 'email@email.com')
    emp = Employee.new(firstname: 'first', lastname: 'last', email: 'email@email.com')
    emp.valid?
    expect(emp.errors[:email]).to include('has already been taken')
  end

  it "is invalid with a first name longer than 30 characters" do
    emp = build(:employee, firstname: 'a' * 31)
    emp.valid?
    expect(emp.errors[:firstname]).to include('is too long (maximum is 30 characters)')
  end

  it "is invalid with a last name longer than 30 characters" do
    emp = build(:employee, lastname: 'a' * 31)
    emp.valid?
    expect(emp.errors[:lastname]).to include('is too long (maximum is 30 characters)')
  end

  it "is invalid with an email longer than 40 characters" do
    emp = build(:employee, email: 'a' * 41)
    emp.valid?
    expect(emp.errors[:email]).to include('is too long (maximum is 40 characters)')
  end

  it "is invalid with a title longer than 30 charaacters" do
    emp = build(:employee, title: 'a' * 31)
    emp.valid?
    expect(emp.errors[:title]).to include('is too long (maximum is 30 characters)')
  end

  it "is invalid with a office number longer than 6 characters" do
    emp = build(:employee, office_number: 'a' * 7)
    emp.valid?
    expect(emp.errors[:office_number]).to include('is too long (maximum is 6 characters)')
  end

  it "is invalid with an invalid phone number" do
    numbers = ['555444', '444-c34-3333', '555-0393', '33344439221', '444 444-444','3334445555']
    numbers.each do |number|
      emp = build(:employee, phone: number)
      emp.valid?
      expect(emp.errors[:phone]).to include("#{number} is not a valid phone number")
    end
  end

  it "is valid with a valid phone number" do
    expect(build(:employee, phone: '(123) 456-7890')).to be_valid
  end

  it "is invalid with an invalid email address" do
    addresses = ['user@foo,com', 'user@foo+bar.com', 'user at foo.com', 'user@foo']
    addresses.each do |address|
      emp = build(:employee, email: address)
      emp.valid?
      expect(emp.errors[:email]).to include("#{address} is not a valid email address")
    end
  end

  it "is valid with a valid email address" do
    addresses = ['user@foo.com', 'user@foo.co', 'user@foo.bar.com', 'foo+bar@user.com']
    addresses.each do |address|
      expect(build(:employee, email: address)).to be_valid
    end
  end

end
