class Confirmation < ActiveRecord::Base

require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 
 
# put your own credentials here 
account_sid = 'AC6d7cbd146b8c78fc99d8cb680c9d7fb7' 
auth_token = 'fde2a5358e7e401c7bd66feb52b45604' 
 
# set up a client to talk to the Twilio REST API 
@client = Twilio::REST::Client.new account_sid, auth_token 
 
@client.account.messages.create({
	:from => '+13478537603',  
	:body => 'This is your confirmation for RESTAURANT and MOVIE'  
})

end
