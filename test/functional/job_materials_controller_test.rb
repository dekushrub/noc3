require 'test_helper'

class JobMaterialsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_material" do
    assert_difference('JobMaterial.count') do
      post :create, :job_material => { }
    end

    assert_redirected_to job_material_path(assigns(:job_material))
  end

  test "should show job_material" do
    get :show, :id => job_materials(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => job_materials(:one).to_param
    assert_response :success
  end

  test "should update job_material" do
    put :update, :id => job_materials(:one).to_param, :job_material => { }
    assert_redirected_to job_material_path(assigns(:job_material))
  end

  test "should destroy job_material" do
    assert_difference('JobMaterial.count', -1) do
      delete :destroy, :id => job_materials(:one).to_param
    end

    assert_redirected_to job_materials_path
  end
end
