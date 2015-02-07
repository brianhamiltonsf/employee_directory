class Employee < ActiveRecord::Base

  belongs_to :department

  before_save { self.email = email.downcase }

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_NUMBER = /\A\d{10}\z/
  VALID_ZIP_CODE = /\A\d{5}(\d{4})?\z/

  validates :firstname, :lastname, presence: true, length: { maximum: 30 }
  validates :department_id, presence: true
  validates :email, length: { maximum: 40 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL,
    message: "%{value} is not a valid email address" }, allow_blank: true
  validates :city, :address1, :address2, length: { maximum: 40 }, allow_blank: true
  validates :title, length: { maximum: 30 }, allow_blank: true
  validates :office_number, length: { maximum: 6 }, allow_blank: true
  validates :phone, length: { maximum: 10 }, format: { with: VALID_PHONE_NUMBER,
    message: "%{value} is not a valid phone number"}, allow_blank: true
  validates :zip, format: { with: VALID_ZIP_CODE, message: "%{value} is not a valid zip code" }
  validates :state, inclusion: { in: ['AK', 'AL', 'AR', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'HI',
    'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MI', 'MN', 'MO', 'MS', 'MT', 'NC', 'ND', 'NE',
    'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VA', 'VT', 'WA',
    'WI', 'WV', 'WY'], message: "%{value} is not a valid state" }, allow_blank: true


  def name
    "#{firstname} #{lastname}"
  end
end
