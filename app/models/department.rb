class Department < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }

  def get_owner
    Employee.find(self.leader_id).name unless self.leader_id.nil?
  end

  def potential_owners
    owners = Employee.find_by(manager && department_id == self.id)
  end
end
