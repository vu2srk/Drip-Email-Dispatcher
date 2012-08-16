require 'test_helper'

class DripEmailsControllerTest < ActionController::TestCase
  setup do
    @drip_email = drip_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drip_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drip_email" do
    assert_difference('DripEmail.count') do
      post :create, drip_email: { drip_id: @drip_email.drip_id, email_id: @drip_email.email_id, sequence: @drip_email.sequence }
    end

    assert_redirected_to drip_email_path(assigns(:drip_email))
  end

  test "should show drip_email" do
    get :show, id: @drip_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drip_email
    assert_response :success
  end

  test "should update drip_email" do
    put :update, id: @drip_email, drip_email: { drip_id: @drip_email.drip_id, email_id: @drip_email.email_id, sequence: @drip_email.sequence }
    assert_redirected_to drip_email_path(assigns(:drip_email))
  end

  test "should destroy drip_email" do
    assert_difference('DripEmail.count', -1) do
      delete :destroy, id: @drip_email
    end

    assert_redirected_to drip_emails_path
  end
end
