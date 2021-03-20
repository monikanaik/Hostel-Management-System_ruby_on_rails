require "application_system_test_case"

class AllotmentsTest < ApplicationSystemTestCase
  setup do
    @allotment = allotments(:one)
  end

  test "visiting the index" do
    visit allotments_url
    assert_selector "h1", text: "Allotments"
  end

  test "creating a Allotment" do
    visit allotments_url
    click_on "New Allotment"

    fill_in "Check in date", with: @allotment.check_in_date
    fill_in "Check out date", with: @allotment.check_out_date
    fill_in "Room", with: @allotment.room_id
    fill_in "Student", with: @allotment.student_id
    click_on "Create Allotment"

    assert_text "Allotment was successfully created"
    click_on "Back"
  end

  test "updating a Allotment" do
    visit allotments_url
    click_on "Edit", match: :first

    fill_in "Check in date", with: @allotment.check_in_date
    fill_in "Check out date", with: @allotment.check_out_date
    fill_in "Room", with: @allotment.room_id
    fill_in "Student", with: @allotment.student_id
    click_on "Update Allotment"

    assert_text "Allotment was successfully updated"
    click_on "Back"
  end

  test "destroying a Allotment" do
    visit allotments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Allotment was successfully destroyed"
  end
end
