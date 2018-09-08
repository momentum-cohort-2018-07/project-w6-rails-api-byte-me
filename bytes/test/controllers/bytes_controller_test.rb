require 'test_helper'

class BytesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @byte = bytes(:one)
  end

  test "should get index" do
    get bytes_url, as: :json
    assert_response :success
  end

  test "should create byte" do
    assert_difference('Byte.count') do
      post bytes_url, params: { byte: { body: @byte.body, user_id: @byte.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show byte" do
    get byte_url(@byte), as: :json
    assert_response :success
  end

  test "should update byte" do
    patch byte_url(@byte), params: { byte: { body: @byte.body, user_id: @byte.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy byte" do
    assert_difference('Byte.count', -1) do
      delete byte_url(@byte), as: :json
    end

    assert_response 204
  end
end
