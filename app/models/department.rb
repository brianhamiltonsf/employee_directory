class Department < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }
end
