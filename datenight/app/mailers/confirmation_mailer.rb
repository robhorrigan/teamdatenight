class ConfirmationMailer < ActionMailer::Base
  default from: "confirmation@4daysout.com "

  def confirmation_email(name, message, email)
  	@name = name
  	@message = message
  	@email = email
  	mail(to: email ,subject: "Your Date Itinerary from 4DaysOut.com! ")

  end
end

