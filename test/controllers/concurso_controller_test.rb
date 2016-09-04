require 'test_helper'

class ConcursoControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get concurso_list_url
    assert_response :success
  end

  test "should get new" do
    get concurso_new_url
    assert_response :success
  end

  test "should get create" do
    get concurso_create_url
    assert_response :success
  end

end
