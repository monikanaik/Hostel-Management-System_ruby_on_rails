require "application_system_test_case"

class FeesTest < ApplicationSystemTestCase
  setup do
    @fee = fees(:one)
  end

  test "visiting the index" do
    visit fees_url
    assert_selector "h1", text: "Fees"
  end

  test "creating a Fee" do
    visit fees_url
    click_on "New Fee"

    fill_in "Deposit date", with: @fee.deposit_date
    fill_in "Deposite fee", with: @fee.deposite_fee
    fill_in "Student", with: @fee.student_id
    fill_in "Total fee", with: @fee.total_fee
    click_on "Create Fee"

    assert_text "Fee was successfully created"
    click_on "Back"
  end

  test "updating a Fee" do
    visit fees_url
    click_on "Edit", match: :first

    fill_in "Deposit date", with: @fee.deposit_date
    fill_in "Deposite fee", with: @fee.deposite_fee
    fill_in "Student", with: @fee.student_id
    fill_in "Total fee", with: @fee.total_fee
    click_on "Update Fee"

    assert_text "Fee was successfully updated"
    click_on "Back"
  end

  test "destroying a Fee" do
    visit fees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fee was successfully destroyed"
  end
end
