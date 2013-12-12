require 'test_helper'

class ActiveHeadersControllerTest < ActionController::TestCase
  setup do
    @active_header = active_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:active_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create active_header" do
    assert_difference('ActiveHeader.count') do
      post :create, active_header: { id: @active_header.id }
    end

    assert_redirected_to active_header_path(assigns(:active_header))
  end

  test "should show active_header" do
    get :show, id: @active_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @active_header
    assert_response :success
  end

  test "should update active_header" do
    patch :update, id: @active_header, active_header: { id: @active_header.id }
    assert_redirected_to active_header_path(assigns(:active_header))
  end

  test "should destroy active_header" do
    assert_difference('ActiveHeader.count', -1) do
      delete :destroy, id: @active_header
    end

    assert_redirected_to active_headers_path
  end
end
