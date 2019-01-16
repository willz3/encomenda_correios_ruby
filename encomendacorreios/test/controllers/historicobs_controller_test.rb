require 'test_helper'

class HistoricobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historicob = historicobs(:one)
  end

  test "should get index" do
    get historicobs_url
    assert_response :success
  end

  test "should get new" do
    get new_historicob_url
    assert_response :success
  end

  test "should create historicob" do
    assert_difference('Historicob.count') do
      post historicobs_url, params: { historicob: {  } }
    end

    assert_redirected_to historicob_url(Historicob.last)
  end

  test "should show historicob" do
    get historicob_url(@historicob)
    assert_response :success
  end

  test "should get edit" do
    get edit_historicob_url(@historicob)
    assert_response :success
  end

  test "should update historicob" do
    patch historicob_url(@historicob), params: { historicob: {  } }
    assert_redirected_to historicob_url(@historicob)
  end

  test "should destroy historicob" do
    assert_difference('Historicob.count', -1) do
      delete historicob_url(@historicob)
    end

    assert_redirected_to historicobs_url
  end
end
