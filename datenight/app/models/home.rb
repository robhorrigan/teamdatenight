require 'date'

class Home < ActiveRecord::Base

    today = Date.today
    tomorrow = today.next
    next_day = tomorrow.next
    @next_day = next_day.strftime('%A')
    last_day = next_day.next
    @last_day = last_day.strftime('%A')
  

  def self.next_day
    @next_day
  end

  def self.last_day
    @last_day
  end

end