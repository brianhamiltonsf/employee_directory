class Employee < ActiveRecord::Base

  include Sluggable

  belongs_to :department
  belongs_to :location

  before_save { self.email = email.downcase }
  before_save :update_directs_on_delete, only: :destroy

  has_secure_password validations: false

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_NUMBER = /\A\(\d{3}\)\s\d{3}-\d{4}\z/

  validates :firstname, :lastname, presence: true, length: { maximum: 30 }
  validates :email, length: { maximum: 40 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL,
    message: "%{value} is not a valid email address" }, allow_blank: true

  validates :title, length: { maximum: 30 }, allow_blank: true
  validates :office_number, length: { maximum: 6 }, allow_blank: true
  validates :phone, format: { with: VALID_PHONE_NUMBER,
    message: "%{value} is not a valid phone number"}, allow_blank: true
  validates :password, length: { minimum: 6 }, allow_blank: true, presence: { on: :create }, confirmation: true

  def name
    "#{firstname} #{lastname}"
  end

  sluggable_column :name

  def to_param
    self.slug
  end

  def management_chain
    chain = []
    mgr_id = self.manager_id
    while(mgr_id != nil)
      chain << mgr_id
      emp = Employee.find(mgr_id)
      mgr_id = emp.manager_id
    end
    chain
  end

  def directs
    Employee.where("manager_id = ?", self.id).order(:lastname)
  end

  def self.search(query)
    results = []
    results << where("firstname like ?", "%#{query}%")
    results << where("lastname like ?", "%#{query}%")
    results.uniq
  end

  private

  def update_directs_on_delete
    unless self.directs.empty?
      self.directs.each do |emp|
        emp.manager_id = self.manager_id unless self.manager_id.nil?
      end
    end
  end

end
