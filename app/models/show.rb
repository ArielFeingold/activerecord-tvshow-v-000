class Show < ActiveRecord::Base

  def self.highest_rating
    show = Show.maximum("rating")
  end

  def self.most_popular_show
    show = Show.where("rating = ?", self.highest_rating).first
  end

  def self.lowest_rating
    show = Show.minimum("rating")
  end

  def self.least_popular_show
    show = Show.where("rating = ?", self.lowest_rating).first
  end

  def self.ratings_sum
    Show.sum("rating")
  end

  def self.popular_shows
    shows = Show.where("rating > 5")
  end




end
