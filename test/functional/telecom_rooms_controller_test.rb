require 'test_helper'

class TelecomRoomsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telecom_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telecom_room" do
    assert_difference('TelecomRoom.count') do
      post :create, :telecom_room => { }
    end

    assert_redirected_to telecom_room_path(assigns(:telecom_room))
  end

  test "should show telecom_room" do
    get :show, :id => telecom_rooms(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => telecom_rooms(:one).to_param
    assert_response :success
  end

  test "should update telecom_room" do
    put :update, :id => telecom_rooms(:one).to_param, :telecom_room => { }
    assert_redirected_to telecom_room_path(assigns(:telecom_room))
  end

  test "should destroy telecom_room" do
    assert_difference('TelecomRoom.count', -1) do
      delete :destroy, :id => telecom_rooms(:one).to_param
    end

    assert_redirected_to telecom_rooms_path
  end
end
