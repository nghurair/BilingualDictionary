require 'test_helper'

class EnglishSignsControllerTest < ActionController::TestCase
  setup do
    @english_sign = english_signs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:english_signs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create english_sign" do
    assert_difference('EnglishSign.count') do
      post :create, english_sign: { filename: @english_sign.filename, phrase: @english_sign.phrase }
    end

    assert_redirected_to english_sign_path(assigns(:english_sign))
  end

  test "should show english_sign" do
    get :show, id: @english_sign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @english_sign
    assert_response :success
  end

  test "should update english_sign" do
    patch :update, id: @english_sign, english_sign: { filename: @english_sign.filename, phrase: @english_sign.phrase }
    assert_redirected_to english_sign_path(assigns(:english_sign))
  end

  test "should destroy english_sign" do
    assert_difference('EnglishSign.count', -1) do
      delete :destroy, id: @english_sign
    end

    assert_redirected_to english_signs_path
  end
end
