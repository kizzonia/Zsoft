require 'test_helper'

class AboutsControllerTest < ActionController::TestCase
  setup do
    @about = abouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about" do
    assert_difference('About.count') do
      post :create, about: { contact: @about.contact, email: @about.email, hobby: @about.hobby, name: @about.name, portfolio: @about.portfolio, signature: @about.signature, website: @about.website }
    end

    assert_redirected_to about_path(assigns(:about))
  end

  test "should show about" do
    get :show, id: @about
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @about
    assert_response :success
  end

  test "should update about" do
    patch :update, id: @about, about: { contact: @about.contact, email: @about.email, hobby: @about.hobby, name: @about.name, portfolio: @about.portfolio, signature: @about.signature, website: @about.website }
    assert_redirected_to about_path(assigns(:about))
  end

  test "should destroy about" do
    assert_difference('About.count', -1) do
      delete :destroy, id: @about
    end

    assert_redirected_to abouts_path
  end
end
