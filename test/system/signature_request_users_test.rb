require "application_system_test_case"

class SignatureRequestUsersTest < ApplicationSystemTestCase
  setup do
    @signature_request_user = signature_request_users(:one)
  end

  test "visiting the index" do
    visit signature_request_users_url
    assert_selector "h1", text: "Signature Request Users"
  end

  test "creating a Signature request user" do
    visit signature_request_users_url
    click_on "New Signature Request User"

    fill_in "Created date", with: @signature_request_user.created_date
    fill_in "Num page", with: @signature_request_user.num_page
    fill_in "Pos x", with: @signature_request_user.pos_x
    fill_in "Pos y", with: @signature_request_user.pos_y
    fill_in "Request", with: @signature_request_user.request_id
    fill_in "Signature date", with: @signature_request_user.signature_date
    check "Signed" if @signature_request_user.signed
    fill_in "User", with: @signature_request_user.user_id
    click_on "Create Signature request user"

    assert_text "Signature request user was successfully created"
    click_on "Back"
  end

  test "updating a Signature request user" do
    visit signature_request_users_url
    click_on "Edit", match: :first

    fill_in "Created date", with: @signature_request_user.created_date
    fill_in "Num page", with: @signature_request_user.num_page
    fill_in "Pos x", with: @signature_request_user.pos_x
    fill_in "Pos y", with: @signature_request_user.pos_y
    fill_in "Request", with: @signature_request_user.request_id
    fill_in "Signature date", with: @signature_request_user.signature_date
    check "Signed" if @signature_request_user.signed
    fill_in "User", with: @signature_request_user.user_id
    click_on "Update Signature request user"

    assert_text "Signature request user was successfully updated"
    click_on "Back"
  end

  test "destroying a Signature request user" do
    visit signature_request_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Signature request user was successfully destroyed"
  end
end
