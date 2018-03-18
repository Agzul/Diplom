require 'test_helper'

class VideoCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_card = video_cards(:one)
  end

  test "should get index" do
    get video_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_video_card_url
    assert_response :success
  end

  test "should create video_card" do
    assert_difference('VideoCard.count') do
      post video_cards_url, params: { video_card: { company_id: @video_card.company_id, description: @video_card.description, game_benchmark: @video_card.game_benchmark, image: @video_card.image, interface_id: @video_card.interface_id, name: @video_card.name, price: @video_card.price, speed: @video_card.speed, tdp: @video_card.tdp, type: @video_card.type, volume: @video_card.volume } }
    end

    assert_redirected_to video_card_url(VideoCard.last)
  end

  test "should show video_card" do
    get video_card_url(@video_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_card_url(@video_card)
    assert_response :success
  end

  test "should update video_card" do
    patch video_card_url(@video_card), params: { video_card: { company_id: @video_card.company_id, description: @video_card.description, game_benchmark: @video_card.game_benchmark, image: @video_card.image, interface_id: @video_card.interface_id, name: @video_card.name, price: @video_card.price, speed: @video_card.speed, tdp: @video_card.tdp, type: @video_card.type, volume: @video_card.volume } }
    assert_redirected_to video_card_url(@video_card)
  end

  test "should destroy video_card" do
    assert_difference('VideoCard.count', -1) do
      delete video_card_url(@video_card)
    end

    assert_redirected_to video_cards_url
  end
end
