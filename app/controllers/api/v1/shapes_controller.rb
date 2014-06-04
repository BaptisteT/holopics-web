class Api::V1::ShapesController < Api::V1::ApiController

  def create
    shape = Shape.new

    shape.avatar = StringIO.new(Base64.decode64(params[:avatar]))
    shape.path = StringIO.new(params[:path])

    if shape.save 
      render json: { result: { shape: shape } }, status: 201
    else 
      render json: { errors: { internal: shape.errors } }, :status => 500
    end
  end 

  def index 
    shape = []

    shape = Shape.order('id DESC')

    render json: { result: { shapes: shape} }, status: 200
  end

end