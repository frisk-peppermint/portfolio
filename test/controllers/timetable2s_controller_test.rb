require 'test_helper'

class Timetable2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timetable2 = timetable2s(:one)
  end

  test "should get index" do
    get timetable2s_url
    assert_response :success
  end

  test "should get new" do
    get new_timetable2_url
    assert_response :success
  end

  test "should create timetable2" do
    assert_difference('Timetable2.count') do
      post timetable2s_url, params: { timetable2: { NOP: @timetable2.NOP, time: @timetable2.time, user_id: @timetable2.user_id } }
    end

    assert_redirected_to timetable2_url(Timetable2.last)
  end

  test "should show timetable2" do
    get timetable2_url(@timetable2)
    assert_response :success
  end

  test "should get edit" do
    get edit_timetable2_url(@timetable2)
    assert_response :success
  end

  test "should update timetable2" do
    patch timetable2_url(@timetable2), params: { timetable2: { NOP: @timetable2.NOP, time: @timetable2.time, user_id: @timetable2.user_id } }
    assert_redirected_to timetable2_url(@timetable2)
  end

  test "should destroy timetable2" do
    assert_difference('Timetable2.count', -1) do
      delete timetable2_url(@timetable2)
    end

    assert_redirected_to timetable2s_url
  end
end
