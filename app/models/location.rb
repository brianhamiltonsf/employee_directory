class Location < ActiveRecord::Base
  has_many :employees
  VALID_ZIP_CODE = /\A\d{5}(\d{4})?\z/

  validates :city, :address1, :address2, length: { maximum: 40 }, allow_blank: true
  validates :zip, format: { with: VALID_ZIP_CODE, message: "%{value} is not a valid zip code" }
  validates :state, inclusion: { in: ['AK', 'AL', 'AR', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'HI',
    'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MI', 'MN', 'MO', 'MS', 'MT', 'NC', 'ND', 'NE',
    'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VA', 'VT', 'WA',
    'WI', 'WV', 'WY'], message: "Please select a valid state" }, allow_blank: true
end