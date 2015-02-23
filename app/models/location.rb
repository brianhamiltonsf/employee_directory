class Location < ActiveRecord::Base

  include Sluggable

  has_many :employees, dependent: :nullify
  VALID_ZIP_CODE = /\A\d{5}\z/

  validates :name, presence: true
  validates :address, length: { maximum: 40 }, presence: true
  validates :city, length: { maximum: 40 }, presence: true
  validates :address2, length: { maximum: 40 }
  validates :state, inclusion: { in: ['AK', 'AL', 'AR', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'HI',
    'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MI', 'MN', 'MO', 'MS', 'MT', 'NC', 'ND', 'NE',
    'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VA', 'VT', 'WA',
    'WI', 'WV', 'WY'], message: "Please select a state" }
    validates :zip, format: { with: VALID_ZIP_CODE, message: "%{value} is not a valid zip code" }

  sluggable_column :name

  def to_param
    self.slug
  end

end
