require 'test_helper'

class DispatchedEmailsControllerTest < ActionController::TestCase
  setup do
    @dispatched_email = dispatched_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dispatched_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dispatched_email" do
    assert_difference('DispatchedEmail.count') do
      post :create, dispatched_email: { drip_id: @dispatched_email.drip_id, email_id: @dispatched_email.email_id, sent_date: @dispatched_email.sent_date, user_id: @dispatched_email.user_id }
    end

    assert_redirected_to dispatched_email_path(assigns(:dispatched_email))
  end

  test "should show dispatched_email" do
    get :show, id: @dispatched_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dispatched_email
    assert_response :success
  end

  test "should update dispatched_email" do
    put :update, id: @dispatched_email, dispatched_email: { drip_id: @dispatched_email.drip_id, email_id: @dispatched_email.email_id, sent_date: @dispatched_email.sent_date, user_id: @dispatched_email.user_id }
    assert_redirected_to dispatched_email_path(assigns(:dispatched_email))
  end

  test "should destroy dispatched_email" do
    assert_difference('DispatchedEmail.count', -1) do
      delete :destroy, id: @dispatched_email
    end

    assert_redirected_to dispatched_emails_path
  end
end
