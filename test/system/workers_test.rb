require "application_system_test_case"

class WorkersTest < ApplicationSystemTestCase
  setup do
    @worker = workers(:one)
  end

  test "visiting the index" do
    visit workers_url
    assert_selector "h1", text: "Workers"
  end

  test "creating a Worker" do
    visit workers_url
    click_on "New Worker"

    fill_in "Component", with: @worker.component_id
    fill_in "User", with: @worker.user_id
    click_on "Create Worker"

    assert_text "Worker was successfully created"
    click_on "Back"
  end

  test "updating a Worker" do
    visit workers_url
    click_on "Edit", match: :first

    fill_in "Component", with: @worker.component_id
    fill_in "User", with: @worker.user_id
    click_on "Update Worker"

    assert_text "Worker was successfully updated"
    click_on "Back"
  end

  test "destroying a Worker" do
    visit workers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Worker was successfully destroyed"
  end
end
