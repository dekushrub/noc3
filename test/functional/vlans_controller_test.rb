require 'test_helper'

class VlansControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vlans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vlan" do
    assert_difference('Vlan.count') do
      post :create, :vlan => { }
    end

    assert_redirected_to vlan_path(assigns(:vlan))
  end

  test "should show vlan" do
    get :show, :id => vlans(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vlans(:one).to_param
    assert_response :success
  end

  test "should update vlan" do
    put :update, :id => vlans(:one).to_param, :vlan => { }
    assert_redirected_to vlan_path(assigns(:vlan))
  end

  test "should destroy vlan" do
    assert_difference('Vlan.count', -1) do
      delete :destroy, :id => vlans(:one).to_param
    end

    assert_redirected_to vlans_path
  end
end
