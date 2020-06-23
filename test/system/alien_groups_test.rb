require "application_system_test_case"

class AlienGroupsTest < ApplicationSystemTestCase
  setup do
    @alien_group = alien_groups(:one)
  end

  test "visiting the index" do
    visit alien_groups_url
    assert_selector "h1", text: "Alien Groups"
  end

  test "creating a Alien group" do
    visit alien_groups_url
    click_on "New Alien Group"

    fill_in "Desription", with: @alien_group.desription
    fill_in "Name", with: @alien_group.name
    fill_in "Planet", with: @alien_group.planet_id
    click_on "Create Alien group"

    assert_text "Alien group was successfully created"
    click_on "Back"
  end

  test "updating a Alien group" do
    visit alien_groups_url
    click_on "Edit", match: :first

    fill_in "Desription", with: @alien_group.desription
    fill_in "Name", with: @alien_group.name
    fill_in "Planet", with: @alien_group.planet_id
    click_on "Update Alien group"

    assert_text "Alien group was successfully updated"
    click_on "Back"
  end

  test "destroying a Alien group" do
    visit alien_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alien group was successfully destroyed"
  end
end
