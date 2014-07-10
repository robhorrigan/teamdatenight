
theaters_array = []

movies_doc.css('div.theater').each do |theater|

  theater_hash = {}
    theater_hash[:name] = theater.css('h2.name').text
    theater_hash[:address] = theater.css('div.info').text.split(" - ").first
    theater_hash[:number] = theater.css('div.info').text.split(" - ").last
    @movies_array = []
    theater_hash[:movies] = theater.css('div.showtimes').css('div.movie').map do |data|
            @movie_hash = {}
            @movie_hash[:title] = data.css('div.name').text
            @movie_hash[:movie_info] = data.css('span.info').text.gsub(" - Trailer - IMDb","")
            @movie_hash[:run_times] = data.css('div.times').text.split(" &nbsp")
        
      end
  @movies_array << @movie_hash
  theaters_array << theater_hash
end
