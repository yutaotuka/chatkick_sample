require "application_system_test_case"

class RugbyWorldCupHostCountriesTest < ApplicationSystemTestCase
  setup do
    @rugby_world_cup_host_country = rugby_world_cup_host_countries(:one)
  end

  test "visiting the index" do
    visit rugby_world_cup_host_countries_url
    assert_selector "h1", text: "Rugby world cup host countries"
  end

  test "should create rugby world cup host country" do
    visit rugby_world_cup_host_countries_url
    click_on "New rugby world cup host country"

    fill_in "Held at", with: @rugby_world_cup_host_country.held_at
    fill_in "Matches", with: @rugby_world_cup_host_country.matches
    fill_in "Name", with: @rugby_world_cup_host_country.name
    fill_in "Stadium capacity", with: @rugby_world_cup_host_country.stadium_capacity
    fill_in "Total attendance", with: @rugby_world_cup_host_country.total_attendance
    click_on "Create Rugby world cup host country"

    assert_text "Rugby world cup host country was successfully created"
    click_on "Back"
  end

  test "should update Rugby world cup host country" do
    visit rugby_world_cup_host_country_url(@rugby_world_cup_host_country)
    click_on "Edit this rugby world cup host country", match: :first

    fill_in "Held at", with: @rugby_world_cup_host_country.held_at
    fill_in "Matches", with: @rugby_world_cup_host_country.matches
    fill_in "Name", with: @rugby_world_cup_host_country.name
    fill_in "Stadium capacity", with: @rugby_world_cup_host_country.stadium_capacity
    fill_in "Total attendance", with: @rugby_world_cup_host_country.total_attendance
    click_on "Update Rugby world cup host country"

    assert_text "Rugby world cup host country was successfully updated"
    click_on "Back"
  end

  test "should destroy Rugby world cup host country" do
    visit rugby_world_cup_host_country_url(@rugby_world_cup_host_country)
    click_on "Destroy this rugby world cup host country", match: :first

    assert_text "Rugby world cup host country was successfully destroyed"
  end
end
