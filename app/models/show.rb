class Show < ActiveRecord::Base

  def self.highest_rating
    maximum(:rating)
  end

  def self.most_popular_show
    order(:rating).last
  end

  def self.lowest_rating
    minimum(:rating)
  end

  def self.least_popular_show
    order(:rating).first
  end

  def self.ratings_sum
    sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

end
