require 'test_helper'

class DripsControllerTest < ActionController::TestCase
  setup do
    @drip = drips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drip" do
    assert_difference('Drip.count') do
      post :create, drip: { name: @drip.name }
    end

    assert_redirected_to drip_path(assigns(:drip))
  end

  test "should show drip" do
    get :show, id: @drip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drip
    assert_response :success
  end

  test "should update drip" do
    put :update, id: @drip, drip: { name: @drip.name }
    assert_redirected_to drip_path(assigns(:drip))
  end

  test "should destroy drip" do
    assert_difference('Drip.count', -1) do
      delete :destroy, id: @drip
    end

    assert_redirected_to drips_path
  end
end
