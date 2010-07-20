require 'test_helper'

class SubnetsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subnets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subnet" do
    assert_difference('Subnet.count') do
      post :create, :subnet => { }
    end

    assert_redirected_to subnet_path(assigns(:subnet))
  end

  test "should show subnet" do
    get :show, :id => subnets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => subnets(:one).to_param
    assert_response :success
  end

  test "should update subnet" do
    put :update, :id => subnets(:one).to_param, :subnet => { }
    assert_redirected_to subnet_path(assigns(:subnet))
  end

  test "should destroy subnet" do
    assert_difference('Subnet.count', -1) do
      delete :destroy, :id => subnets(:one).to_param
    end

    assert_redirected_to subnets_path
  end
end
