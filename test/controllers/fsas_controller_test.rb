require 'test_helper'

class FsasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fsa = fsas(:one)
  end

  test "should get index" do
    get fsas_url
    assert_response :success
  end

  test "should get new" do
    get new_fsa_url
    assert_response :success
  end

  test "should create fsa" do
    assert_difference('Fsa.count') do
      post fsas_url, params: { fsa: { fsacode: @fsa.fsacode } }
    end

    assert_redirected_to fsa_url(Fsa.last)
  end

  test "should show fsa" do
    get fsa_url(@fsa)
    assert_response :success
  end

  test "should get edit" do
    get edit_fsa_url(@fsa)
    assert_response :success
  end

  test "should update fsa" do
    patch fsa_url(@fsa), params: { fsa: { fsacode: @fsa.fsacode } }
    assert_redirected_to fsa_url(@fsa)
  end

  test "should destroy fsa" do
    assert_difference('Fsa.count', -1) do
      delete fsa_url(@fsa)
    end

    assert_redirected_to fsas_url
  end
end
