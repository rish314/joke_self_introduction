require "application_system_test_case"

class UserProfilesTest < ApplicationSystemTestCase
  setup do
    @user_profile = user_profiles(:one)
  end

  test "visiting the index" do
    visit user_profiles_url
    assert_selector "h1", text: "User Profiles"
  end

  test "creating a User profile" do
    visit user_profiles_url
    click_on "New User Profile"

    fill_in "Hash", with: @user_profile.hash
    fill_in "Job", with: @user_profile.job_id
    fill_in "Level", with: @user_profile.level_id
    fill_in "Modifier", with: @user_profile.modifier_id
    fill_in "Nick name", with: @user_profile.nick_name
    click_on "Create User profile"

    assert_text "User profile was successfully created"
    click_on "Back"
  end

  test "updating a User profile" do
    visit user_profiles_url
    click_on "Edit", match: :first

    fill_in "Hash", with: @user_profile.hash
    fill_in "Job", with: @user_profile.job_id
    fill_in "Level", with: @user_profile.level_id
    fill_in "Modifier", with: @user_profile.modifier_id
    fill_in "Nick name", with: @user_profile.nick_name
    click_on "Update User profile"

    assert_text "User profile was successfully updated"
    click_on "Back"
  end

  test "destroying a User profile" do
    visit user_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User profile was successfully destroyed"
  end
end
