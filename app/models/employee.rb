class Employee < ActiveRecord::Base

  include Sluggable

  belongs_to :department
  belongs_to :location

  mount_uploader :avatar, AvatarUploader

  before_save { self.email = email.downcase }
  before_destroy :update_directs_on_delete
  before_save :set_fullname

  has_secure_password validations: false

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_NUMBER = /\A\(\d{3}\)\s\d{3}-\d{4}\z/

  validates :firstname, :lastname, presence: true, length: { maximum: 30 }
  validates :title, :location_id, :office_number, :phone, presence: true
  validates :email, length: { maximum: 40 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL,
    message: "%{value} is not a valid email address" }
  validates :department_id, presence: true
  validates :title, length: { maximum: 30 }, allow_blank: true, presence: true
  validates :office_number, length: { maximum: 6 }, allow_blank: true, presence: true
  validates :phone, format: { with: VALID_PHONE_NUMBER,
    message: "%{value} is not a valid phone number"}, allow_blank: true, presence: true
  validates :password, length: { minimum: 6 }, allow_blank: true, presence: { on: :create }, confirmation: true
  validates :password_digest, presence: true

  def name
    "#{firstname} #{lastname}"
  end

  def set_fullname
    self.fullname = "#{firstname} #{lastname}"
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
    chain.reverse << self.id
  end

  def end_of_chain
    management_chain.length - 1
  end

  def directs
    Employee.where("manager_id = ?", self.id).order(:lastname)
  end

  def self.search(query)
    results = []
    results << where("fullname like ?", "%#{query}%")
    results.flatten.uniq
  end

  def self.managers
    mgr_hash = {}
    return_mgrs = []
    where("manager = ?", true).each do |m|
      mgr_hash[m.name] = Department.find(m.department_id).name
    end
    sorted = mgr_hash.sort_by{ |k,v| v }
    sorted.each do |k,v|
      return_mgrs << k + " - " + v
    end
    return_mgrs
  end

  private

  def update_directs_on_delete
    unless self.directs.empty?
      self.directs.map do |emp|
        emp.manager_id = self.manager_id
        emp.save
      end
    end
  end

end
