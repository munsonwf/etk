require 'test_helper'

class CasefilesControllerTest < ActionController::TestCase
  setup do
    @casefile = casefiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:casefiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create casefile" do
    assert_difference('Casefile.count') do
      post :create, casefile: { client: @casefile.client, date_closed: @casefile.date_closed, date_opened: @casefile.date_opened, file_number: @casefile.file_number, location: @casefile.location, matter: @casefile.matter }
    end

    assert_redirected_to casefile_path(assigns(:casefile))
  end

  test "should show casefile" do
    get :show, id: @casefile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @casefile
    assert_response :success
  end

  test "should update casefile" do
    patch :update, id: @casefile, casefile: { client: @casefile.client, date_closed: @casefile.date_closed, date_opened: @casefile.date_opened, file_number: @casefile.file_number, location: @casefile.location, matter: @casefile.matter }
    assert_redirected_to casefile_path(assigns(:casefile))
  end

  test "should destroy casefile" do
    assert_difference('Casefile.count', -1) do
      delete :destroy, id: @casefile
    end

    assert_redirected_to casefiles_path
  end
end
