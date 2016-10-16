class UserNotifier < ActionMailer::Base
    default :from => 'dispose_me_notifier@example.com'

    def send_email(emails, drugs)
        mail( :to => emails, :subject => "Take not of the expiry drugs" )
    end
end
