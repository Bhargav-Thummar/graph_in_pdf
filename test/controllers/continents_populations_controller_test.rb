require 'test_helper'

class ContinentsPopulationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @continents_population = continents_populations(:one)
  end

  test "should get index" do
    get continents_populations_url
    assert_response :success
  end

  test "should get new" do
    get new_continents_population_url
    assert_response :success
  end

  test "should create continents_population" do
    assert_difference('ContinentsPopulation.count') do
      post continents_populations_url, params: { continents_population: { contribution: @continents_population.contribution, name: @continents_population.name } }
    end

    assert_redirected_to continents_population_url(ContinentsPopulation.last)
  end

  test "should show continents_population" do
    get continents_population_url(@continents_population)
    assert_response :success
  end

  test "should get edit" do
    get edit_continents_population_url(@continents_population)
    assert_response :success
  end

  test "should update continents_population" do
    patch continents_population_url(@continents_population), params: { continents_population: { contribution: @continents_population.contribution, name: @continents_population.name } }
    assert_redirected_to continents_population_url(@continents_population)
  end

  test "should destroy continents_population" do
    assert_difference('ContinentsPopulation.count', -1) do
      delete continents_population_url(@continents_population)
    end

    assert_redirected_to continents_populations_url
  end
end
