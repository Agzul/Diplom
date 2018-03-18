require 'test_helper'

class HddsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hdd = hdds(:one)
  end

  test "should get index" do
    get hdds_url
    assert_response :success
  end

  test "should get new" do
    get new_hdd_url
    assert_response :success
  end

  test "should create hdd" do
    assert_difference('Hdd.count') do
      post hdds_url, params: { hdd: { company_id: @hdd.company_id, description: @hdd.description, image: @hdd.image, name: @hdd.name, price: @hdd.price, read_speed: @hdd.read_speed, rotation_speed: @hdd.rotation_speed, size: @hdd.size, volume: @hdd.volume, write_speed: @hdd.write_speed } }
    end

    assert_redirected_to hdd_url(Hdd.last)
  end

  test "should show hdd" do
    get hdd_url(@hdd)
    assert_response :success
  end

  test "should get edit" do
    get edit_hdd_url(@hdd)
    assert_response :success
  end

  test "should update hdd" do
    patch hdd_url(@hdd), params: { hdd: { company_id: @hdd.company_id, description: @hdd.description, image: @hdd.image, name: @hdd.name, price: @hdd.price, read_speed: @hdd.read_speed, rotation_speed: @hdd.rotation_speed, size: @hdd.size, volume: @hdd.volume, write_speed: @hdd.write_speed } }
    assert_redirected_to hdd_url(@hdd)
  end

  test "should destroy hdd" do
    assert_difference('Hdd.count', -1) do
      delete hdd_url(@hdd)
    end

    assert_redirected_to hdds_url
  end
end
