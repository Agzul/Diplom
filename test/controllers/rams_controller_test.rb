require 'test_helper'

class RamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ram = rams(:one)
  end

  test "should get index" do
    get rams_url
    assert_response :success
  end

  test "should get new" do
    get new_ram_url
    assert_response :success
  end

  test "should create ram" do
    assert_difference('Ram.count') do
      post rams_url, params: { ram: { company_id: @ram.company_id, description: @ram.description, image: @ram.image, name: @ram.name, price: @ram.price, ram_type_id: @ram.ram_type_id, volume: @ram.volume } }
    end

    assert_redirected_to ram_url(Ram.last)
  end

  test "should show ram" do
    get ram_url(@ram)
    assert_response :success
  end

  test "should get edit" do
    get edit_ram_url(@ram)
    assert_response :success
  end

  test "should update ram" do
    patch ram_url(@ram), params: { ram: { company_id: @ram.company_id, description: @ram.description, image: @ram.image, name: @ram.name, price: @ram.price, ram_type_id: @ram.ram_type_id, volume: @ram.volume } }
    assert_redirected_to ram_url(@ram)
  end

  test "should destroy ram" do
    assert_difference('Ram.count', -1) do
      delete ram_url(@ram)
    end

    assert_redirected_to rams_url
  end
end
