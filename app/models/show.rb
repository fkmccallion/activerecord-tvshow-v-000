class Show < ActiveRecord::Base

  def self.highest_rating
    maximum(:rating)
  end

  def self.most_popular_show
    order(:rating).last
  end

end
