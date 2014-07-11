require 'date'

class HomeController < ApplicationController
  
  def index
    today = Date.today
    tomorrow = today.next
    @next_day = tomorrow.next
    @last_day = @next_day.next


  end
end
