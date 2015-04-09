class Department < ActiveRecord::Base

  include Sluggable

  has_many :employees, dependent: :nullify
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }

  sluggable_column :name

  # Returns the manager of the department.
  def get_owner
    Employee.find(self.leader_id).name unless self.leader_id.nil?
  end

  # Returns an array of Employee objects that are in the department and are managers.
  def potential_owners
    owners = Employee.where("department_id = ? AND manager = ?", self.id, true)
  end

  # Returns an array of arrays. the inner array includes the department name and id.
  def self.all_departments
    order(:name).map { |dep| [dep.name,dep.id] }
  end

  def to_param
    self.slug
  end

end
