require 'test_helper'

class SchoolReportsControllerTest < ActionController::TestCase
  setup do
    @school_report = schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_report" do
    assert_difference('SchoolReport.count') do
      post :create, school_report: { centreNo: @school_report.centreNo, emis: @school_report.emis, passed: @school_report.passed, schoolName: @school_report.schoolName, written: @school_report.written }
    end

    assert_redirected_to school_report_path(assigns(:school_report))
  end

  test "should show school_report" do
    get :show, id: @school_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_report
    assert_response :success
  end

  test "should update school_report" do
    patch :update, id: @school_report, school_report: { centreNo: @school_report.centreNo, emis: @school_report.emis, passed: @school_report.passed, schoolName: @school_report.schoolName, written: @school_report.written }
    assert_redirected_to school_report_path(assigns(:school_report))
  end

  test "should destroy school_report" do
    assert_difference('SchoolReport.count', -1) do
      delete :destroy, id: @school_report
    end

    assert_redirected_to schools_path
  end
end
