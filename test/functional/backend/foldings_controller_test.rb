require 'test_helper'
 
class Backend::FoldingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foldings)
  end
 
  test "should get new" do
    get :new
    assert_response :success
  end
 
  test "should create folding" do
    assert_difference('Folding.count') do
      post :create, :folding => { }
    end
 
    assert_redirected_to folding_path(assigns(:folding))
  end
 
  test "should show folding" do
    get :show, :id => foldings(:one).id
    assert_response :success
  end
 
  test "should get edit" do
    get :edit, :id => foldings(:one).id
    assert_response :success
  end
 
  test "should update folding" do
    put :update, :id => foldings(:one).id, :folding => { }
    assert_redirected_to folding_path(assigns(:folding))
  end
 
  test "should destroy folding" do
    assert_difference('Folding.count', -1) do
      delete :destroy, :id => foldings(:one).id
    end
 
    assert_redirected_to foldings_path
  end
end