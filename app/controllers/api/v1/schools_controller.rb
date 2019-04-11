class Api::V1::SchoolsController < ApplicationController
  respond_to :js, :json
  skip_before_filter :verify_authenticity_token

  api :GET, '/v1/schools', 'Get a list of all schools'
  description 'This request will return a list of all schools, as per the provided CSV'

  def index
    @schools = School.all
  end

  api :POST, '/v1/schools', 'Create a new school by posting emis, centreNo and schoolName parameters'
  description 'This create a new school by posting emis, centreNo and schoolName parameters via the API'

  def create
    @school = School.create(school_params)
  end

  private

  def school_params
    params.require(:school).permit(:emis, :centreNo, :schoolName)
  end
end
