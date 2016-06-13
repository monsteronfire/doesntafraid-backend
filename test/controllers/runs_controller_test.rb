require 'test_helper'

class RunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @run = runs(:one)
  end

  test "should get index" do
    get runs_url
    assert_response :success
  end

  test "should create run" do
    assert_difference('Run.count') do
      post runs_url, params: { run: { date: @run.date, description: @run.description, distance: @run.distance, duration: @run.duration, name: @run.name } }
    end

    assert_response 201
  end

  test "should show run" do
    get run_url(@run)
    assert_response :success
  end

  test "should update run" do
    patch run_url(@run), params: { run: { date: @run.date, description: @run.description, distance: @run.distance, duration: @run.duration, name: @run.name } }
    assert_response 200
  end

  test "should destroy run" do
    assert_difference('Run.count', -1) do
      delete run_url(@run)
    end

    assert_response 204
  end
end
