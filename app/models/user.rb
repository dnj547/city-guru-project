class User < ActiveRecord::Base
  has_many :favorites
  has_many :cities, through: :favorites
  
  def user_with_most_favorites

  end

  def best_city_for_user

  end
end
