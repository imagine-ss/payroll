require "application_system_test_case"

class AppraisalsTest < ApplicationSystemTestCase
  setup do
    @appraisal = appraisals(:one)
  end

  test "visiting the index" do
    visit appraisals_url
    assert_selector "h1", text: "Appraisals"
  end

  test "should create appraisal" do
    visit appraisals_url
    click_on "New appraisal"

    fill_in "Collaboration", with: @appraisal.collaboration
    fill_in "Communication", with: @appraisal.communication
    fill_in "Decision making", with: @appraisal.decision_making
    fill_in "Problem solving", with: @appraisal.problem_solving
    fill_in "User", with: @appraisal.user_id
    fill_in "Work ethic", with: @appraisal.work_ethic
    click_on "Create Appraisal"

    assert_text "Appraisal was successfully created"
    click_on "Back"
  end

  test "should update Appraisal" do
    visit appraisal_url(@appraisal)
    click_on "Edit this appraisal", match: :first

    fill_in "Collaboration", with: @appraisal.collaboration
    fill_in "Communication", with: @appraisal.communication
    fill_in "Decision making", with: @appraisal.decision_making
    fill_in "Problem solving", with: @appraisal.problem_solving
    fill_in "User", with: @appraisal.user_id
    fill_in "Work ethic", with: @appraisal.work_ethic
    click_on "Update Appraisal"

    assert_text "Appraisal was successfully updated"
    click_on "Back"
  end

  test "should destroy Appraisal" do
    visit appraisal_url(@appraisal)
    click_on "Destroy this appraisal", match: :first

    assert_text "Appraisal was successfully destroyed"
  end
end
