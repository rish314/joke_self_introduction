class Admin::Modifier < ApplicationRecord
  validates :modifier_name, presence: true, uniqueness: true
end
