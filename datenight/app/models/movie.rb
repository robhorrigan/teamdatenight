require 'open-uri'

class Movie < ActiveRecord::Base
  has_one :restaurant

  @zipcode = 11217

  today = 0
  
  html = open("http://www.google.com/movies?near=#{@zipcode}&date=#{today}")
  
  movies_doc = Nokogiri::HTML(html)

  @movies_array = []

  movies_doc.css("div.theater").each do |theater|
    theater_hash = {}
    theater_hash[:name] = theater.css('h2.name').text
    theater_hash[:info] = theater.css('div.info').text
    theater_hash[:movies] = theater.css('div.movie').map do |movie| 
      movie.text.gsub(" Trailer -","").gsub(" IMDb","").gsub("&nbsp","")
    end

    @movies_array << theater_hash
  end

  def self.all 
    @movies_array
  end

  def self.name
  end

  def self.info
  end

  def self.display_movies
  end

end
