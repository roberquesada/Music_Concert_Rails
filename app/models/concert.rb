class Concert < ActiveRecord::Base
  validates :band, :venue, :city, :date, :price, :description, presence: true
  validates :price, numericality: true

  def self.today_concerts
    where('date BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
  end

  def self.later_this_month
    where('date BETWEEN ? AND ?', DateTime.tomorrow.beginning_of_day, DateTime.tomorrow.end_of_month).all
  end

end
