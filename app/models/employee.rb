class Employee < ApplicationRecord
  belongs_to :department
  belongs_to :project
  belongs_to :rank
  has_one :employee_file
  accepts_nested_attributes_for :employee_file
  has_many :employee_projects
  has_many :projects, through: :employee_projects
end
