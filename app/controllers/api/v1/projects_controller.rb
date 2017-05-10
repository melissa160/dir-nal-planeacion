class Api::V1::ProjectsController < ApiController
  def index
    @maker = Maker.find(params[:maker_id])
    @projects = @maker.projects
  end

end