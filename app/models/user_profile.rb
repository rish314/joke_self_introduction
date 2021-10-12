class UserProfile < ApplicationRecord
  belongs_to :modifier
  belongs_to :job
  belongs_to :level

  before_validation :fill_hash
  def fill_hash
    self.hash = Digest::MD5.hexdigest(self.nick_name)
  end

end
