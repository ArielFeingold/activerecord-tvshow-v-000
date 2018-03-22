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

  def ratings_sum
    Show.sum("rating")
  end




end
