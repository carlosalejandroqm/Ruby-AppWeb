require 'test_helper'

class SignatureRequestUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @signature_request_user = signature_request_users(:one)
  end

  test "should get index" do
    get signature_request_users_url
    assert_response :success
  end

  test "should get new" do
    get new_signature_request_user_url
    assert_response :success
  end

  test "should create signature_request_user" do
    assert_difference('SignatureRequestUser.count') do
      post signature_request_users_url, params: { signature_request_user: { created_date: @signature_request_user.created_date, num_page: @signature_request_user.num_page, pos_x: @signature_request_user.pos_x, pos_y: @signature_request_user.pos_y, request_id: @signature_request_user.request_id, signature_date: @signature_request_user.signature_date, signed: @signature_request_user.signed, user_id: @signature_request_user.user_id } }
    end

    assert_redirected_to signature_request_user_url(SignatureRequestUser.last)
  end

  test "should show signature_request_user" do
    get signature_request_user_url(@signature_request_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_signature_request_user_url(@signature_request_user)
    assert_response :success
  end

  test "should update signature_request_user" do
    patch signature_request_user_url(@signature_request_user), params: { signature_request_user: { created_date: @signature_request_user.created_date, num_page: @signature_request_user.num_page, pos_x: @signature_request_user.pos_x, pos_y: @signature_request_user.pos_y, request_id: @signature_request_user.request_id, signature_date: @signature_request_user.signature_date, signed: @signature_request_user.signed, user_id: @signature_request_user.user_id } }
    assert_redirected_to signature_request_user_url(@signature_request_user)
  end

  test "should destroy signature_request_user" do
    assert_difference('SignatureRequestUser.count', -1) do
      delete signature_request_user_url(@signature_request_user)
    end

    assert_redirected_to signature_request_users_url
  end
end
