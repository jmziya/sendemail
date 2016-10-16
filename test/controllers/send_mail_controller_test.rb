require 'test_helper'

class SendMailControllerTest < ActionDispatch::IntegrationTest
  test "should get send" do
    get send_mail_send_url
    assert_response :success
  end

end
