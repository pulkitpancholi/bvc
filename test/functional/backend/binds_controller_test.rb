require 'test_helper'
 
class Backend::BindsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:binds)
  end
 
  test "should get new" do
    get :new
    assert_response :success
  end
 
  test "should create bind" do
    assert_difference('Bind.count') do
      post :create, :bind => { }
    end
 
    assert_redirected_to bind_path(assigns(:bind))
  end
 
  test "should show bind" do
    get :show, :id => binds(:one).id
    assert_response :success
  end
 
  test "should get edit" do
    get :edit, :id => binds(:one).id
    assert_response :success
  end
 
  test "should update bind" do
    put :update, :id => binds(:one).id, :bind => { }
    assert_redirected_to bind_path(assigns(:bind))
  end
 
  test "should destroy bind" do
    assert_difference('Bind.count', -1) do
      delete :destroy, :id => binds(:one).id
    end
 
    assert_redirected_to binds_path
  end
end