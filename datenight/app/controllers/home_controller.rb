class HomeController < ApplicationController
  def index
    today = Date.today
    tomorrow = today.next
    next_day = tomorrow.next
    @next_day.strftime('%A %d %b %Y')
    last_day = next_day.next
    @last_day.strftime('%A %d %b %Y')
  end
end
