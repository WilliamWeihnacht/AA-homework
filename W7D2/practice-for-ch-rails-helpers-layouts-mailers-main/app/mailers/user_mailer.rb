class UserMailer < ApplicationMailer
    def welcome_email(user)
        @user = user
        @url = 'www.google.com'
        debugger
        mail(to: user.username, subject: "Welcome to 99 cats")
    end
end
