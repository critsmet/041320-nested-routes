require 'test_helper'

class AlienGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alien_group = alien_groups(:one)
  end

  test "should get index" do
    get alien_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_alien_group_url
    assert_response :success
  end

  test "should create alien_group" do
    assert_difference('AlienGroup.count') do
      post alien_groups_url, params: { alien_group: { desription: @alien_group.desription, name: @alien_group.name, planet_id: @alien_group.planet_id } }
    end

    assert_redirected_to alien_group_url(AlienGroup.last)
  end

  test "should show alien_group" do
    get alien_group_url(@alien_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_alien_group_url(@alien_group)
    assert_response :success
  end

  test "should update alien_group" do
    patch alien_group_url(@alien_group), params: { alien_group: { desription: @alien_group.desription, name: @alien_group.name, planet_id: @alien_group.planet_id } }
    assert_redirected_to alien_group_url(@alien_group)
  end

  test "should destroy alien_group" do
    assert_difference('AlienGroup.count', -1) do
      delete alien_group_url(@alien_group)
    end

    assert_redirected_to alien_groups_url
  end
end
