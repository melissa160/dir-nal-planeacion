class Api::V1::ProjectsController < ApiController
  before_action :set_maker

  def index
    @projects = @maker.projects
    if params[:nombre].present?
      @projects = @projects.where("nombre ILIKE ?", "%#{params[:nombre]}%")
    end
    json_response(@projects)
  end

  def create
    @maker.projects.create!(project_params)
    json_response(@maker.projects, :created)
  end

  def show
    @project = @maker.projects.find(params[:id]) if @maker
    json_response(@project)
  end

  def update
    @project = @maker.projects.find(params[:id]) if @maker
    @project.update(project_params)
    head :no_content
  end

  private
  def set_maker
    @maker = Maker.find(params[:maker_id])
  end

  def project_params
    params.permit(:nombre,:apropiacion_inicial, :apropiacion_vigente, :compromisos, :obligaciones, :pagos, :year_id)
  end

end