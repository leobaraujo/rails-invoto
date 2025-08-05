require "test_helper"

class MicroregionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microregion = microregions(:one)
  end

  test "should get index" do
    get microregions_url
    assert_response :success
  end

  test "should get new" do
    get new_microregion_url
    assert_response :success
  end

  test "should create microregion" do
    assert_difference("Microregion.count") do
      post microregions_url, params: { microregion: { name: @microregion.name, region_id: @microregion.region_id } }
    end

    assert_redirected_to microregion_url(Microregion.last)
  end

  test "should show microregion" do
    get microregion_url(@microregion)
    assert_response :success
  end

  test "should get edit" do
    get edit_microregion_url(@microregion)
    assert_response :success
  end

  test "should update microregion" do
    patch microregion_url(@microregion), params: { microregion: { name: @microregion.name, region_id: @microregion.region_id } }
    assert_redirected_to microregion_url(@microregion)
  end

  test "should destroy microregion" do
    assert_difference("Microregion.count", -1) do
      delete microregion_url(@microregion)
    end

    assert_redirected_to microregions_url
  end
end
