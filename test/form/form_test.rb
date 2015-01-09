require 'test_helper'

class BaseControlTest < ActionView::TestCase
  include BootstrapBuilder::Base
  
  def setup
    @user = User.new(email: 'example@example.com', password: 'example')
  end
  
  test "default form wiht base control" do
    expected = %{<form role="form" class="new_user" id="new_user" action="/users" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /></form>}
    assert_equal expected, bootstrap_form_for(@user, layout: :horizontal) { |f| f.email_field :email }
  end
end