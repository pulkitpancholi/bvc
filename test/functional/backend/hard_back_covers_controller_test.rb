require 'test_helper'
 
class Backend::HardBackCoversControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hard_back_covers)
  end
 
  test "should get new" do
    get :new
    assert_response :success
  end
 
  test "should create hard_back_cover" do
    assert_difference('HardBackCover.count') do
      post :create, :hard_back_cover => { }
    end
 
    assert_redirected_to hard_back_cover_path(assigns(:hard_back_cover))
  end
 
  test "should show hard_back_cover" do
    get :show, :id => hard_back_covers(:one).id
    assert_response :success
  end
 
  test "should get edit" do
    get :edit, :id => hard_back_covers(:one).id
    assert_response :success
  end
 
  test "should update hard_back_cover" do
    put :update, :id => hard_back_covers(:one).id, :hard_back_cover => { }
    assert_redirected_to hard_back_cover_path(assigns(:hard_back_cover))
  end
 
  test "should destroy hard_back_cover" do
    assert_difference('HardBackCover.count', -1) do
      delete :destroy, :id => hard_back_covers(:one).id
    end
 
    assert_redirected_to hard_back_covers_path
  end
end