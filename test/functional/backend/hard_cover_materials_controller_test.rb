require 'test_helper'
 
class Backend::HardCoverMaterialsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hard_cover_materials)
  end
 
  test "should get new" do
    get :new
    assert_response :success
  end
 
  test "should create hard_cover_material" do
    assert_difference('HardCoverMaterial.count') do
      post :create, :hard_cover_material => { }
    end
 
    assert_redirected_to hard_cover_material_path(assigns(:hard_cover_material))
  end
 
  test "should show hard_cover_material" do
    get :show, :id => hard_cover_materials(:one).id
    assert_response :success
  end
 
  test "should get edit" do
    get :edit, :id => hard_cover_materials(:one).id
    assert_response :success
  end
 
  test "should update hard_cover_material" do
    put :update, :id => hard_cover_materials(:one).id, :hard_cover_material => { }
    assert_redirected_to hard_cover_material_path(assigns(:hard_cover_material))
  end
 
  test "should destroy hard_cover_material" do
    assert_difference('HardCoverMaterial.count', -1) do
      delete :destroy, :id => hard_cover_materials(:one).id
    end
 
    assert_redirected_to hard_cover_materials_path
  end
end