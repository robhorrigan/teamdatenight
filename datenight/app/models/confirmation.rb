class Confirmation < ActiveRecord::Base
  def self.message(numbers, message)
    numbers.each do |number|
      account_sid = "AC139f154ed289df71588b6b4fe2ba6c4c"
     auth_token = "c54502782441b734c29477e19268ba62"
     client = Twilio::REST::Client.new account_sid, auth_token    

      from = "+17187171011" # 4DaysOut Twilio number

      client.account.messages.create(
       :from => from,
       :to => number,
       :body => message
     )
      puts "Sent message to #{number}"
    end
  end
end
