require "application_system_test_case"

class ContinentsPopulationsTest < ApplicationSystemTestCase
  setup do
    @continents_population = continents_populations(:one)
  end

  test "visiting the index" do
    visit continents_populations_url
    assert_selector "h1", text: "Continents Populations"
  end

  test "creating a Continents population" do
    visit continents_populations_url
    click_on "New Continents Population"

    fill_in "Contribution", with: @continents_population.contribution
    fill_in "Name", with: @continents_population.name
    click_on "Create Continents population"

    assert_text "Continents population was successfully created"
    click_on "Back"
  end

  test "updating a Continents population" do
    visit continents_populations_url
    click_on "Edit", match: :first

    fill_in "Contribution", with: @continents_population.contribution
    fill_in "Name", with: @continents_population.name
    click_on "Update Continents population"

    assert_text "Continents population was successfully updated"
    click_on "Back"
  end

  test "destroying a Continents population" do
    visit continents_populations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Continents population was successfully destroyed"
  end
end
