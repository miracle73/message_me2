class ConfirmMailer < ApplicationMailer
def confirmation(user)
  

    mail ({to: user.email,
   	subject: "message for #{user.email}", body: "Somebody chatted"})
	
  end
end