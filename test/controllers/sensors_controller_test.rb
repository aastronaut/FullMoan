require 'test_helper'

class SensorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensor = sensors(:one)
  end

  test "should get index" do
    get sensors_url
    assert_response :success
  end

  test "should get new" do
    get new_sensor_url
    assert_response :success
  end

  test "should create sensor" do
    assert_difference('Sensor.count') do
      post sensors_url, params: { sensor: { id: @sensor.id, maximum_range: @sensor.maximum_range, name: @sensor.name, power: @sensor.power, resolution: @sensor.resolution, type: @sensor.type, vendor: @sensor.vendor, version: @sensor.version } }
    end

    assert_redirected_to sensor_url(Sensor.last)
  end

  test "should show sensor" do
    get sensor_url(@sensor)
    assert_response :success
  end

  test "should get edit" do
    get edit_sensor_url(@sensor)
    assert_response :success
  end

  test "should update sensor" do
    patch sensor_url(@sensor), params: { sensor: { id: @sensor.id, maximum_range: @sensor.maximum_range, name: @sensor.name, power: @sensor.power, resolution: @sensor.resolution, type: @sensor.type, vendor: @sensor.vendor, version: @sensor.version } }
    assert_redirected_to sensor_url(@sensor)
  end

  test "should destroy sensor" do
    assert_difference('Sensor.count', -1) do
      delete sensor_url(@sensor)
    end

    assert_redirected_to sensors_url
  end
end
