require 'test_helper'

class MingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ming = mings(:one)
  end

  test "should get index" do
    get mings_url
    assert_response :success
  end

  test "should get new" do
    get new_ming_url
    assert_response :success
  end

  test "should create ming" do
    assert_difference('Ming.count') do
      post mings_url, params: { ming: { content: @ming.content, title: @ming.title } }
    end

    assert_redirected_to ming_url(Ming.last)
  end

  test "should show ming" do
    get ming_url(@ming)
    assert_response :success
  end

  test "should get edit" do
    get edit_ming_url(@ming)
    assert_response :success
  end

  test "should update ming" do
    patch ming_url(@ming), params: { ming: { content: @ming.content, title: @ming.title } }
    assert_redirected_to ming_url(@ming)
  end

  test "should destroy ming" do
    assert_difference('Ming.count', -1) do
      delete ming_url(@ming)
    end

    assert_redirected_to mings_url
  end
end
