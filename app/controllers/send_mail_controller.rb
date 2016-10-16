class SendMailController < ApplicationController
  def send_mail
    raise params.inspect
    receivedObj = [:drugs => {:drug_id => 1, :drug_name => 'Panado'},
                   :emails => ['jacobmziya@gmail.com', 'mangochiman@gmail.com']
    ]
    email_addresses = receivedObj[0][:emails]
    drugs = receivedObj[0][:drugs]
    if UserNotifier.send_email(email_addresses, drugs).deliver
        redirect_to '/'
    else
        raise 'Delivery failed.'
    end
  end
end
