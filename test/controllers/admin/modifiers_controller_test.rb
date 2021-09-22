require "test_helper"

class Admin::ModifiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_modifier = admin_modifiers(:one)
  end

  test "should get index" do
    get admin_modifiers_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_modifier_url
    assert_response :success
  end

  test "should create admin_modifier" do
    assert_difference('Admin::Modifier.count') do
      post admin_modifiers_url, params: { admin_modifier: { modifier_name: @admin_modifier.modifier_name } }
    end

    assert_redirected_to admin_modifier_url(Admin::Modifier.last)
  end

  test "should show admin_modifier" do
    get admin_modifier_url(@admin_modifier)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_modifier_url(@admin_modifier)
    assert_response :success
  end

  test "should update admin_modifier" do
    patch admin_modifier_url(@admin_modifier), params: { admin_modifier: { modifier_name: @admin_modifier.modifier_name } }
    assert_redirected_to admin_modifier_url(@admin_modifier)
  end

  test "should destroy admin_modifier" do
    assert_difference('Admin::Modifier.count', -1) do
      delete admin_modifier_url(@admin_modifier)
    end

    assert_redirected_to admin_modifiers_url
  end
end
