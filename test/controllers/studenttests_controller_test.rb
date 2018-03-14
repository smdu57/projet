require 'test_helper'

class StudenttestsControllerTest < ActionController::TestCase
  setup do
    @studenttest = studenttests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studenttests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studenttest" do
    assert_difference('Studenttest.count') do
      post :create, studenttest: { birthday: @studenttest.birthday, lastname: @studenttest.lastname, name: @studenttest.name }
    end

    assert_redirected_to studenttest_path(assigns(:studenttest))
  end

  test "should show studenttest" do
    get :show, id: @studenttest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studenttest
    assert_response :success
  end

  test "should update studenttest" do
    patch :update, id: @studenttest, studenttest: { birthday: @studenttest.birthday, lastname: @studenttest.lastname, name: @studenttest.name }
    assert_redirected_to studenttest_path(assigns(:studenttest))
  end

  test "should destroy studenttest" do
    assert_difference('Studenttest.count', -1) do
      delete :destroy, id: @studenttest
    end

    assert_redirected_to studenttests_path
  end
end
