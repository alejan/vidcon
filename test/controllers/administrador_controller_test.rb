require 'test_helper'

class AdministradorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administrador_index_url
    assert_response :success
  end

  test "should get new" do
    get administrador_new_url
    assert_response :success
  end

  test "should get create" do
    get administrador_create_url
    assert_response :success
  end

  test "should get update" do
    get administrador_update_url
    assert_response :success
  end

  test "should get destroy" do
    get administrador_destroy_url
    assert_response :success
  end

end
