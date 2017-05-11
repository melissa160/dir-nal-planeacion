class Api::V1::ProjectsController < ApiController
  before_action :set_maker

  def index
    @projects = @maker.projects
    if params[:nombre].present?
      @projects = @projects.where("nombre ILIKE ?", "%#{params[:nombre]}%")
    end
  end

  private
  def set_maker
    @maker = Maker.find(params[:maker_id])
  end

end