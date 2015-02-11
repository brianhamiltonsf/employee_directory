class Employee < ActiveRecord::Base

  belongs_to :department
  belongs_to :location

  before_save { self.email = email.downcase }

  has_secure_password validations: false

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_NUMBER = /\A\d{10}\z/

  validates :firstname, :lastname, presence: true, length: { maximum: 30 }
  validates :email, length: { maximum: 40 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL,
    message: "%{value} is not a valid email address" }, allow_blank: true

  validates :title, length: { maximum: 30 }, allow_blank: true
  validates :office_number, length: { maximum: 6 }, allow_blank: true
  validates :phone, length: { maximum: 10 }, format: { with: VALID_PHONE_NUMBER,
    message: "%{value} is not a valid phone number"}, allow_blank: true
  validates :password, length: { minimum: 6 }, allow_blank: true, presence: { on: :create }, confirmation: true

  def name
    "#{firstname} #{lastname}"
  end

end
