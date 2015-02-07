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

  it "is invalid without a department id" do
    emp = build(:employee, department_id: nil)
    emp.valid?
    expect(emp.errors[:department_id]).to include("can't be blank")
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

  it "is invalid with a city name longer than 40 characters" do
    emp = build(:employee, city: 'a' * 41)
    emp.valid?
    expect(emp.errors[:city]).to include('is too long (maximum is 40 characters)')
  end

  it "is invalid with a street address longer than 40 characters" do
    emp = build(:employee, address1: 'a' * 41)
    emp.valid?
    expect(emp.errors[:address1]).to include('is too long (maximum is 40 characters)')
  end

  it "is invalid with a secondary address longer than 40 characters" do
    emp = build(:employee, address2: 'a' * 41)
    emp.valid?
    expect(emp.errors[:address2]).to include('is too long (maximum is 40 characters)')
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

  it "is invalid with a phone number longer than 10 characters" do
    emp = build(:employee, phone: 'a' * 11)
    emp.valid?
    expect(emp.errors[:phone]).to include('is too long (maximum is 10 characters)')
  end

  it "is invalid with an invalid state" do
    states = ['AAA', 'A1', 'A']
    states.each do |state|
      emp = build(:employee, state: state)
      emp.valid?
      expect(emp.errors[:state]).to include("#{state} is not a valid state")
    end
  end

  it "is valid with a valid state" do
    states = ['AK', 'NY', 'CA', 'OR']
    states.each do |state|
      expect(build(:employee, state: state)).to be_valid
    end
  end

  it "is invalid with an invalid zip code" do
    zips = ['1234', '123456', '123456-9876', '12345-988', 'a', '12345-4321a']
    zips.each do |zip|
      emp = build(:employee, zip: zip)
      emp.valid?
      expect(emp.errors[:zip]).to include("#{zip} is not a valid zip code")
    end
  end

  it "is valid with a valid zip code" do
    zips = ['12345', '123456789']
      zips.each do |zip|
        expect(build(:employee, zip: zip)).to be_valid
      end
  end

  it "is invalid with an invalid phone number" do
    numbers = ['555444', '444-c34-3333', '555-0393', '33344439221', '444 444-444']
    numbers.each do |number|
      emp = build(:employee, phone: number)
      emp.valid?
      expect(emp.errors[:phone]).to include("#{number} is not a valid phone number")
    end
  end

  it "is valid with a valid phone number" do
    expect(build(:employee, phone: '1234567890')).to be_valid
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
