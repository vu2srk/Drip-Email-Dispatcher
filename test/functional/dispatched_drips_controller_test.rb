require 'test_helper'

class DispatchedDripsControllerTest < ActionController::TestCase
  setup do
    @dispatched_drip = dispatched_drips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dispatched_drips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dispatched_drip" do
    assert_difference('DispatchedDrip.count') do
      post :create, dispatched_drip: { customer_id: @dispatched_drip.customer_id, drip_id: @dispatched_drip.drip_id }
    end

    assert_redirected_to dispatched_drip_path(assigns(:dispatched_drip))
  end

  test "should show dispatched_drip" do
    get :show, id: @dispatched_drip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dispatched_drip
    assert_response :success
  end

  test "should update dispatched_drip" do
    put :update, id: @dispatched_drip, dispatched_drip: { customer_id: @dispatched_drip.customer_id, drip_id: @dispatched_drip.drip_id }
    assert_redirected_to dispatched_drip_path(assigns(:dispatched_drip))
  end

  test "should destroy dispatched_drip" do
    assert_difference('DispatchedDrip.count', -1) do
      delete :destroy, id: @dispatched_drip
    end

    assert_redirected_to dispatched_drips_path
  end
end
