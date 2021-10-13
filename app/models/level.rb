class Level < ApplicationRecord
  validates :level_name, presence: true, uniqueness: true
end
