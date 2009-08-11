require 'test_helper'
 
class Backend::PapertypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:papertypes)
  end
 
  test "should get new" do
    get :new
    assert_response :success
  end
 
  test "should create papertype" do
    assert_difference('Papertype.count') do
      post :create, :papertype => { }
    end
 
    assert_redirected_to papertype_path(assigns(:papertype))
  end
 
  test "should show papertype" do
    get :show, :id => papertypes(:one).id
    assert_response :success
  end
 
  test "should get edit" do
    get :edit, :id => papertypes(:one).id
    assert_response :success
  end
 
  test "should update papertype" do
    put :update, :id => papertypes(:one).id, :papertype => { }
    assert_redirected_to papertype_path(assigns(:papertype))
  end
 
  test "should destroy papertype" do
    assert_difference('Papertype.count', -1) do
      delete :destroy, :id => papertypes(:one).id
    end
 
    assert_redirected_to papertypes_path
  end
end