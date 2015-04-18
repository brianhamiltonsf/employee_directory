require 'rails_helper'

RSpec.describe Location, :type => :model do

    it { should respond_to(:name) }
    it { should respond_to(:address) }
    it { should respond_to(:address2) }
    it { should respond_to(:city) }
    it { should respond_to(:state) }
    it { should respond_to(:zip) }
    it { should respond_to(:slug) }
    it { should respond_to(:created_at) }
    it { should respond_to(:updated_at) }

    it "is invalid with a city name longer than 40 characters" do
      loc = build(:location, city: 'a' * 41)
      loc.valid?
      expect(loc.errors[:city]).to include('is too long (maximum is 40 characters)')
    end

    it "is invalid with a street address longer than 40 characters" do
      loc = build(:location, address: 'a' * 41)
      loc.valid?
      expect(loc.errors[:address]).to include('is too long (maximum is 40 characters)')
    end

    it "is invalid with a secondary address longer than 40 characters" do
      loc = build(:location, address2: 'a' * 41)
      loc.valid?
      expect(loc.errors[:address2]).to include('is too long (maximum is 40 characters)')
    end

    it "is invalid with an invalid state" do
      states = ['AAA', 'A1', 'A']
      states.each do |state|
        loc = build(:location, state: state)
        loc.valid?
        expect(loc.errors[:state]).to include("Please select a state")
      end
    end

    it "is valid with a valid state" do
      states = ['AK', 'NY', 'CA', 'OR']
      states.each do |state|
        expect(build(:location, state: state)).to be_valid
      end
    end

    it "is invalid with an invalid zip code" do
      zips = ['1234', '123456', '123456-9876', '12345-988', 'a', '12345-4321a']
      zips.each do |zip|
        loc = build(:location, zip: zip)
        loc.valid?
        expect(loc.errors[:zip]).to include("#{zip} is not a valid postal code")
      end
    end

    it "is valid with a valid zip code" do
      zips = ['12345']
        zips.each do |zip|
          expect(build(:location, zip: zip)).to be_valid
        end
    end
end
