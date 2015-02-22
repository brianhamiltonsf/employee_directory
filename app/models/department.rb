class Department < ActiveRecord::Base

  include Sluggable

  has_many :employees, dependent: :nullify
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }

  sluggable_column :name

  def get_owner
    Employee.find(self.leader_id).name unless self.leader_id.nil?
  end

  def potential_owners
    owners = Employee.find_by(manager && department_id == self.id)
  end

  def to_param
    self.slug
  end

end
