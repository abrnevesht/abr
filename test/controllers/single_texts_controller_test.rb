require 'test_helper'

class SingleTextsControllerTest < ActionController::TestCase
  test "should get edit" do
    s="/singletext/edit/?index=1&field=text1"
    redirect_to :controller=>'singletexts', :action=>'edit', :index =>'1', :field=>'text1'
    assert_response :success
  end

end
