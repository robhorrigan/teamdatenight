require 'open-uri'

class Movie < ActiveRecord::Base
  has_one :restaurant

  def self.theaters_near(user_location, day)
      gsub_location = user_location.gsub(' ','+')


      html = open("http://www.google.com/movies?near=#{gsub_location}&date=#{day}")
      
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
  end

  def self.all 
    @theaters_array
  end

  def self.location
    @zipcode
  end

  def self.date
  end

  def self.display_movies
  end

end
