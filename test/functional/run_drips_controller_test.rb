require 'test_helper'

class RunDripsControllerTest < ActionController::TestCase
  setup do
    @run_drip = run_drips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:run_drips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create run_drip" do
    assert_difference('RunDrip.count') do
      post :create, run_drip: {  }
    end

    assert_redirected_to run_drip_path(assigns(:run_drip))
  end

  test "should show run_drip" do
    get :show, id: @run_drip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @run_drip
    assert_response :success
  end

  test "should update run_drip" do
    put :update, id: @run_drip, run_drip: {  }
    assert_redirected_to run_drip_path(assigns(:run_drip))
  end

  test "should destroy run_drip" do
    assert_difference('RunDrip.count', -1) do
      delete :destroy, id: @run_drip
    end

    assert_redirected_to run_drips_path
  end
end
