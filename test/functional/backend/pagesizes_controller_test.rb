require 'test_helper'
 
class Backend::PagesizesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pagesizes)
  end
 
  test "should get new" do
    get :new
    assert_response :success
  end
 
  test "should create pagesize" do
    assert_difference('Pagesize.count') do
      post :create, :pagesize => { }
    end
 
    assert_redirected_to pagesize_path(assigns(:pagesize))
  end
 
  test "should show pagesize" do
    get :show, :id => pagesizes(:one).id
    assert_response :success
  end
 
  test "should get edit" do
    get :edit, :id => pagesizes(:one).id
    assert_response :success
  end
 
  test "should update pagesize" do
    put :update, :id => pagesizes(:one).id, :pagesize => { }
    assert_redirected_to pagesize_path(assigns(:pagesize))
  end
 
  test "should destroy pagesize" do
    assert_difference('Pagesize.count', -1) do
      delete :destroy, :id => pagesizes(:one).id
    end
 
    assert_redirected_to pagesizes_path
  end
end