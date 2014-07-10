require 'open-uri'

class Movie < ActiveRecord::Base
  has_one :restaurant

  today = 0
  
  html = open("http://www.google.com/movies?near=#{@zipcode}&date=#{today}")
  
  movies_doc = Nokogiri::HTML(html)

  @theaters_array = []

  movies_doc.css('div.theater').each do |theater|

  theater_hash = {}
    theater_hash[:name] = theater.css('h2.name').text
    theater_hash[:address] = theater.css('div.info').text.split(" - ").first
    theater_hash[:number] = theater.css('div.info').text.split(" - ").last
    movies_array = []
    theater_hash[:movies] = theater.css('div.showtimes').css('div.movie').map do |data|
      movie_hash = {}
      movie_hash[:title] = data.css('div.name').text
      movie_hash[:movie_info] = data.css('span.info').text.gsub(/( - Trailer - IMDb| - IMDb)/,"")
      movie_hash[:run_times] = data.css('div.times').text.split(" &nbsp")
      @movies = movie_hash
    end

    movies_array << @movies
    @theaters_array << theater_hash
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
