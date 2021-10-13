class Profile < ApplicationRecord
  belongs_to :job, optional: true
  belongs_to :level, optional: true
  belongs_to :modifier, optional: true

  validates :nick_name, presence: true, uniqueness: true

  before_validation :fill_hash
  def fill_hash
    if self.nick_name
      self.hash = Digest::MD5.hexdigest(self.nick_name)
    end
  end

end
