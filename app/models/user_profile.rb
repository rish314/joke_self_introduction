class UserProfile < ApplicationRecord
  belongs_to :modifier
  belongs_to :job
  belongs_to :level

  validates :nick_name, presence: true, uniqueness: true
  validates :hash, presence: true, uniqueness: true

  before_save :fill_dummy_hash

  def fill_dummy_hash
    self.hash = 'dummy' + Time.now
  end

  after_save :fill_hash
  def fill_hash
    new_digest = Digest::MD5.hexdigest(self.nick_name.to_s)
    update_column(:hash, new_digest)
  end

end
