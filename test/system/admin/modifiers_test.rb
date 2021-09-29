require "application_system_test_case"

class Admin::ModifiersTest < ApplicationSystemTestCase
  setup do
    @admin_modifier = admin_modifiers(:one)
  end

  test "visiting the index" do
    visit admin_modifiers_url
    assert_selector "h1", text: "Admin/Modifiers"
  end

  test "creating a Modifier" do
    visit admin_modifiers_url
    click_on "New Admin/Modifier"

    fill_in "Modifier name", with: @admin_modifier.modifier_name
    click_on "Create Modifier"

    assert_text "Modifier was successfully created"
    click_on "Back"
  end

  test "updating a Modifier" do
    visit admin_modifiers_url
    click_on "Edit", match: :first

    fill_in "Modifier name", with: @admin_modifier.modifier_name
    click_on "Update Modifier"

    assert_text "Modifier was successfully updated"
    click_on "Back"
  end

  test "destroying a Modifier" do
    visit admin_modifiers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Modifier was successfully destroyed"
  end
end
