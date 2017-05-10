class Api::V1::ProjectsController < ApiController
  def index
    @maker = Maker.find(params[:maker_id])
    @projects = @maker.projects
    if params[:nombre].present?
      @projects = @projects.where("nombre ILIKE ?", "%#{params[:nombre]}%")
    end
  end

end