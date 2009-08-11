require 'test_helper'
 
class Backend::StaplingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staplings)
  end
 
  test "should get new" do
    get :new
    assert_response :success
  end
 
  test "should create stapling" do
    assert_difference('Stapling.count') do
      post :create, :stapling => { }
    end
 
    assert_redirected_to stapling_path(assigns(:stapling))
  end
 
  test "should show stapling" do
    get :show, :id => staplings(:one).id
    assert_response :success
  end
 
  test "should get edit" do
    get :edit, :id => staplings(:one).id
    assert_response :success
  end
 
  test "should update stapling" do
    put :update, :id => staplings(:one).id, :stapling => { }
    assert_redirected_to stapling_path(assigns(:stapling))
  end
 
  test "should destroy stapling" do
    assert_difference('Stapling.count', -1) do
      delete :destroy, :id => staplings(:one).id
    end
 
    assert_redirected_to staplings_path
  end
end