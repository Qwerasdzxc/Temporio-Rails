require "application_system_test_case"

class TaskLogsTest < ApplicationSystemTestCase
  setup do
    @task_log = task_logs(:one)
  end

  test "visiting the index" do
    visit task_logs_url
    assert_selector "h1", text: "Task Logs"
  end

  test "creating a Task log" do
    visit task_logs_url
    click_on "New Task Log"

    fill_in "Content", with: @task_log.content
    fill_in "Task", with: @task_log.task_id
    fill_in "Title", with: @task_log.title
    fill_in "User", with: @task_log.user_id
    click_on "Create Task log"

    assert_text "Task log was successfully created"
    click_on "Back"
  end

  test "updating a Task log" do
    visit task_logs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @task_log.content
    fill_in "Task", with: @task_log.task_id
    fill_in "Title", with: @task_log.title
    fill_in "User", with: @task_log.user_id
    click_on "Update Task log"

    assert_text "Task log was successfully updated"
    click_on "Back"
  end

  test "destroying a Task log" do
    visit task_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task log was successfully destroyed"
  end
end
