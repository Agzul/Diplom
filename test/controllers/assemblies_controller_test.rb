require 'test_helper'

class AssembliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assembly = assemblies(:one)
  end

  test "should get index" do
    get assemblies_url
    assert_response :success
  end

  test "should get new" do
    get new_assembly_url
    assert_response :success
  end

  test "should create assembly" do
    assert_difference('Assembly.count') do
      post assemblies_url, params: { assembly: { cpu_id: @assembly.cpu_id, description: @assembly.description, finanse: @assembly.finanse, hdd_id: @assembly.hdd_id, hdd_num: @assembly.hdd_num, motherboard_id: @assembly.motherboard_id, name: @assembly.name, power_supply_id: @assembly.power_supply_id, ram_id: @assembly.ram_id, ram_num: @assembly.ram_num, ssd_id: @assembly.ssd_id, ssd_num: @assembly.ssd_num, user_id: @assembly.user_id, video_card_id: @assembly.video_card_id, video_card_num: @assembly.video_card_num } }
    end

    assert_redirected_to assembly_url(Assembly.last)
  end

  test "should show assembly" do
    get assembly_url(@assembly)
    assert_response :success
  end

  test "should get edit" do
    get edit_assembly_url(@assembly)
    assert_response :success
  end

  test "should update assembly" do
    patch assembly_url(@assembly), params: { assembly: { cpu_id: @assembly.cpu_id, description: @assembly.description, finanse: @assembly.finanse, hdd_id: @assembly.hdd_id, hdd_num: @assembly.hdd_num, motherboard_id: @assembly.motherboard_id, name: @assembly.name, power_supply_id: @assembly.power_supply_id, ram_id: @assembly.ram_id, ram_num: @assembly.ram_num, ssd_id: @assembly.ssd_id, ssd_num: @assembly.ssd_num, user_id: @assembly.user_id, video_card_id: @assembly.video_card_id, video_card_num: @assembly.video_card_num } }
    assert_redirected_to assembly_url(@assembly)
  end

  test "should destroy assembly" do
    assert_difference('Assembly.count', -1) do
      delete assembly_url(@assembly)
    end

    assert_redirected_to assemblies_url
  end
end
