class Level < ApplicationRecord
  has_many :user_profiles

  validates :level_name, presence: true, uniqueness: true
end
