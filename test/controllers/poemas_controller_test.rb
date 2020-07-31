require 'test_helper'

class PoemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poema = poemas(:one)
  end

  test "should get index" do
    get poemas_url
    assert_response :success
  end

  test "should get new" do
    get new_poema_url
    assert_response :success
  end

  test "should create poema" do
    assert_difference('Poema.count') do
      post poemas_url, params: { poema: { contenido: @poema.contenido, titulo: @poema.titulo } }
    end

    assert_redirected_to poema_url(Poema.last)
  end

  test "should show poema" do
    get poema_url(@poema)
    assert_response :success
  end

  test "should get edit" do
    get edit_poema_url(@poema)
    assert_response :success
  end

  test "should update poema" do
    patch poema_url(@poema), params: { poema: { contenido: @poema.contenido, titulo: @poema.titulo } }
    assert_redirected_to poema_url(@poema)
  end

  test "should destroy poema" do
    assert_difference('Poema.count', -1) do
      delete poema_url(@poema)
    end

    assert_redirected_to poemas_url
  end
end
