require 'test_helper'

class ConnectionTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:connection_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create connection_type" do
    assert_difference('ConnectionType.count') do
      post :create, :connection_type => { }
    end

    assert_redirected_to connection_type_path(assigns(:connection_type))
  end

  test "should show connection_type" do
    get :show, :id => connection_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => connection_types(:one).to_param
    assert_response :success
  end

  test "should update connection_type" do
    put :update, :id => connection_types(:one).to_param, :connection_type => { }
    assert_redirected_to connection_type_path(assigns(:connection_type))
  end

  test "should destroy connection_type" do
    assert_difference('ConnectionType.count', -1) do
      delete :destroy, :id => connection_types(:one).to_param
    end

    assert_redirected_to connection_types_path
  end
end
