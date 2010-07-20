require 'test_helper'

class DhcpScopesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dhcp_scopes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dhcp_scope" do
    assert_difference('DhcpScope.count') do
      post :create, :dhcp_scope => { }
    end

    assert_redirected_to dhcp_scope_path(assigns(:dhcp_scope))
  end

  test "should show dhcp_scope" do
    get :show, :id => dhcp_scopes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dhcp_scopes(:one).to_param
    assert_response :success
  end

  test "should update dhcp_scope" do
    put :update, :id => dhcp_scopes(:one).to_param, :dhcp_scope => { }
    assert_redirected_to dhcp_scope_path(assigns(:dhcp_scope))
  end

  test "should destroy dhcp_scope" do
    assert_difference('DhcpScope.count', -1) do
      delete :destroy, :id => dhcp_scopes(:one).to_param
    end

    assert_redirected_to dhcp_scopes_path
  end
end
