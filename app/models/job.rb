class Job < ApplicationRecord
  has_many :user_profiles

  validates :job_name, presence: true, uniqueness: true
end
