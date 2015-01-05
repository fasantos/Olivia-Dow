require 'test_helper'

class ParagrafsControllerTest < ActionController::TestCase
  setup do
    @paragraf = paragrafs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paragrafs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paragraf" do
    assert_difference('Paragraf.count') do
      post :create, paragraf: { act_id: @paragraf.act_id, article_id: @paragraf.article_id, body: @paragraf.body, staff_id: @paragraf.staff_id, title: @paragraf.title }
    end

    assert_redirected_to paragraf_path(assigns(:paragraf))
  end

  test "should show paragraf" do
    get :show, id: @paragraf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paragraf
    assert_response :success
  end

  test "should update paragraf" do
    patch :update, id: @paragraf, paragraf: { act_id: @paragraf.act_id, article_id: @paragraf.article_id, body: @paragraf.body, staff_id: @paragraf.staff_id, title: @paragraf.title }
    assert_redirected_to paragraf_path(assigns(:paragraf))
  end

  test "should destroy paragraf" do
    assert_difference('Paragraf.count', -1) do
      delete :destroy, id: @paragraf
    end

    assert_redirected_to paragrafs_path
  end
end
