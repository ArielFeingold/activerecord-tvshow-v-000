class Show < ActiveRecord::Base

  def self.highest_rating
    show = Show.maximum("rating")
  end

  def self.most_popular_show
    show = Show.find_by(highest_rating).first.title
  end




end
