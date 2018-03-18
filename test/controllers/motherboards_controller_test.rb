require 'test_helper'

class MotherboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motherboard = motherboards(:one)
  end

  test "should get index" do
    get motherboards_url
    assert_response :success
  end

  test "should get new" do
    get new_motherboard_url
    assert_response :success
  end

  test "should create motherboard" do
    assert_difference('Motherboard.count') do
      post motherboards_url, params: { motherboard: { audio: @motherboard.audio, bios: @motherboard.bios, chipset_id: @motherboard.chipset_id, company_id: @motherboard.company_id, description: @motherboard.description, form_factor: @motherboard.form_factor, image: @motherboard.image, name: @motherboard.name, price: @motherboard.price, ram_type_id: @motherboard.ram_type_id } }
    end

    assert_redirected_to motherboard_url(Motherboard.last)
  end

  test "should show motherboard" do
    get motherboard_url(@motherboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_motherboard_url(@motherboard)
    assert_response :success
  end

  test "should update motherboard" do
    patch motherboard_url(@motherboard), params: { motherboard: { audio: @motherboard.audio, bios: @motherboard.bios, chipset_id: @motherboard.chipset_id, company_id: @motherboard.company_id, description: @motherboard.description, form_factor: @motherboard.form_factor, image: @motherboard.image, name: @motherboard.name, price: @motherboard.price, ram_type_id: @motherboard.ram_type_id } }
    assert_redirected_to motherboard_url(@motherboard)
  end

  test "should destroy motherboard" do
    assert_difference('Motherboard.count', -1) do
      delete motherboard_url(@motherboard)
    end

    assert_redirected_to motherboards_url
  end
end
