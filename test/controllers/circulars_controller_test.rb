require 'test_helper'

class CircularsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @circular = circulars(:one)
  end

  test "should get index" do
    get circulars_url
    assert_response :success
  end

  test "should get new" do
    get new_circular_url
    assert_response :success
  end

  test "should create circular" do
    assert_difference('Circular.count') do
      post circulars_url, params: { circular: { atach: @circular.atach, branch: @circular.branch, group: @circular.group, subject: @circular.subject, year: @circular.year } }
    end

    assert_redirected_to circular_url(Circular.last)
  end

  test "should show circular" do
    get circular_url(@circular)
    assert_response :success
  end

  test "should get edit" do
    get edit_circular_url(@circular)
    assert_response :success
  end

  test "should update circular" do
    patch circular_url(@circular), params: { circular: { atach: @circular.atach, branch: @circular.branch, group: @circular.group, subject: @circular.subject, year: @circular.year } }
    assert_redirected_to circular_url(@circular)
  end

  test "should destroy circular" do
    assert_difference('Circular.count', -1) do
      delete circular_url(@circular)
    end

    assert_redirected_to circulars_url
  end
end
