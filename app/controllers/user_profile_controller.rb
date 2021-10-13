class UserProfileController < ApplicationController

  def index
  end

  # /user_profile?q=安倍晋三
  def show
    @job = Job.where( 'id >= ?', rand(Job.count) + 1 ).first
    @level = Level.where( 'id >= ?', rand(Level.count) + 1 ).first
    @modifier = Modifier.where( 'id >= ?', rand(Modifier.count) + 1 ).first
  end
end
