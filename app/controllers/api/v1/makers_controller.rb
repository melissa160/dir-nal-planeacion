class Api::V1::MakersController < ApiController
  def index
    @makers = Maker.all
  end
end