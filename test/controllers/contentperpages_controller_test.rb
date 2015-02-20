require 'test_helper'

class ContentperpagesControllerTest < ActionController::TestCase
  setup do
    @contentperpage = contentperpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contentperpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contentperpage" do
    assert_difference('Contentperpage.count') do
      post :create, contentperpage: { contentid: @contentperpage.contentid, subitemid: @contentperpage.subitemid }
    end

    assert_redirected_to contentperpage_path(assigns(:contentperpage))
  end

  test "should show contentperpage" do
    get :show, id: @contentperpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contentperpage
    assert_response :success
  end

  test "should update contentperpage" do
    patch :update, id: @contentperpage, contentperpage: { contentid: @contentperpage.contentid, subitemid: @contentperpage.subitemid }
    assert_redirected_to contentperpage_path(assigns(:contentperpage))
  end

  test "should destroy contentperpage" do
    assert_difference('Contentperpage.count', -1) do
      delete :destroy, id: @contentperpage
    end

    assert_redirected_to contentperpages_path
  end
end
