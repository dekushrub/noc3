require 'test_helper'

class LineTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_type" do
    assert_difference('LineType.count') do
      post :create, :line_type => { }
    end

    assert_redirected_to line_type_path(assigns(:line_type))
  end

  test "should show line_type" do
    get :show, :id => line_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => line_types(:one).to_param
    assert_response :success
  end

  test "should update line_type" do
    put :update, :id => line_types(:one).to_param, :line_type => { }
    assert_redirected_to line_type_path(assigns(:line_type))
  end

  test "should destroy line_type" do
    assert_difference('LineType.count', -1) do
      delete :destroy, :id => line_types(:one).to_param
    end

    assert_redirected_to line_types_path
  end
end
