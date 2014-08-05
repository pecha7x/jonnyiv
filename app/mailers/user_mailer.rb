class UserMailer < ActionMailer::Base
    default from: "JonnyIV <jonnyspree@gmail.com>"

    def signup_email(user)
        @user = user
        @twitter_message = "#jonnyiv is evolving. Excited for @jonny to launch."

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
