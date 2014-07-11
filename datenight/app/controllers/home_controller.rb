class HomeController < ApplicationController 
  
  def index
    @next_day = Home.next_day
    @last_day = Home.last_day
  end
end
