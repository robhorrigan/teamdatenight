class ConfirmationMailer < ActionMailer::Base
  default from: "confirmation@4daysout.com "

  def confirmation_email(message, email)
  	@message = message
  	@email = email
  	mail(to: email ,subject: "Your Date Itinerary from 4DaysOut.com! ")
  	
  end
end

