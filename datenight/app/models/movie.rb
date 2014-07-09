require 'open-uri'

class Movie < ActiveRecord::Base
  has_one :restaurant

  today = 0

  html = open("http://www.google.com/movies?near=#{@zipcode}&date=#{today}")

  movies_doc = Nokogiri::HTML(html)

  @movies_array = []

  movies_doc.css("div.theater").each do |theater|
    theater_hash = {}
    theater_hash[:name] = theater.css('h2.name').text
    theater_hash[:info] = theater.css('div.info').text
    theater_hash[:movies] = theater.css('div.movie').text.gsub("Trailer -", "").gsub("IMDb", "").gsub("&nbsp", "").gsub(/pm/, 'pm $').split('$')
    @movies_array << theater_hash
  end

  def self.all 
    @movies_array
  end

end
