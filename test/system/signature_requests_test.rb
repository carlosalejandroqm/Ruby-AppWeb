require "application_system_test_case"

class SignatureRequestsTest < ApplicationSystemTestCase
  setup do
    @signature_request = signature_requests(:one)
  end

  test "visiting the index" do
    visit signature_requests_url
    assert_selector "h1", text: "Signature Requests"
  end

  test "creating a Signature request" do
    visit signature_requests_url
    click_on "New Signature Request"

    fill_in "Created date", with: @signature_request.created_date
    fill_in "Document", with: @signature_request.document_id
    fill_in "Subject", with: @signature_request.subject
    fill_in "User", with: @signature_request.user_id
    click_on "Create Signature request"

    assert_text "Signature request was successfully created"
    click_on "Back"
  end

  test "updating a Signature request" do
    visit signature_requests_url
    click_on "Edit", match: :first

    fill_in "Created date", with: @signature_request.created_date
    fill_in "Document", with: @signature_request.document_id
    fill_in "Subject", with: @signature_request.subject
    fill_in "User", with: @signature_request.user_id
    click_on "Update Signature request"

    assert_text "Signature request was successfully updated"
    click_on "Back"
  end

  test "destroying a Signature request" do
    visit signature_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Signature request was successfully destroyed"
  end
end
