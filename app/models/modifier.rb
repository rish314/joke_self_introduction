class Modifier < ApplicationRecord
  has_many :user_profiles

  validates :modifier_name, presence: true, uniqueness: true
end
