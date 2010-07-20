require 'test_helper'

class JobStatusesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_status" do
    assert_difference('JobStatus.count') do
      post :create, :job_status => { }
    end

    assert_redirected_to job_status_path(assigns(:job_status))
  end

  test "should show job_status" do
    get :show, :id => job_statuses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => job_statuses(:one).to_param
    assert_response :success
  end

  test "should update job_status" do
    put :update, :id => job_statuses(:one).to_param, :job_status => { }
    assert_redirected_to job_status_path(assigns(:job_status))
  end

  test "should destroy job_status" do
    assert_difference('JobStatus.count', -1) do
      delete :destroy, :id => job_statuses(:one).to_param
    end

    assert_redirected_to job_statuses_path
  end
end
