class Modifier < ApplicationRecord
  validates :modifier_name, presence: true, uniqueness: true
end
