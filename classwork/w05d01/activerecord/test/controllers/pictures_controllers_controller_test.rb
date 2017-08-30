require 'test_helper'

class PicturesControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pictures_controller = pictures_controllers(:one)
  end

  test "should get index" do
    get pictures_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_pictures_controller_url
    assert_response :success
  end

  test "should create pictures_controller" do
    assert_difference('PicturesController.count') do
      post pictures_controllers_url, params: { pictures_controller: { artist: @pictures_controller.artist, description: @pictures_controller.description, name: @pictures_controller.name, string: @pictures_controller.string, url: @pictures_controller.url } }
    end

    assert_redirected_to pictures_controller_url(PicturesController.last)
  end

  test "should show pictures_controller" do
    get pictures_controller_url(@pictures_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_pictures_controller_url(@pictures_controller)
    assert_response :success
  end

  test "should update pictures_controller" do
    patch pictures_controller_url(@pictures_controller), params: { pictures_controller: { artist: @pictures_controller.artist, description: @pictures_controller.description, name: @pictures_controller.name, string: @pictures_controller.string, url: @pictures_controller.url } }
    assert_redirected_to pictures_controller_url(@pictures_controller)
  end

  test "should destroy pictures_controller" do
    assert_difference('PicturesController.count', -1) do
      delete pictures_controller_url(@pictures_controller)
    end

    assert_redirected_to pictures_controllers_url
  end
end
