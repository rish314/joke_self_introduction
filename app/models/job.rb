class Job < ApplicationRecord
  validates :job_name, presence: true, uniqueness: true
end
