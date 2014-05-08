class Api::V1::HolopicsController < Api::V1::ApiController

	def create
    holopic = Holopic.new(holopics_params)

    holopic.avatar = StringIO.new(Base64.decode64(params[:avatar]))

    if holopic.save
      render json: { result: { holopic: holopic } }, status: 201
    else 
      render json: { errors: { internal: holopic.errors } }, :status => 500
    end
	end

  def index 
    per_page = params[:page_size] ? params[:page_size] : 20
    page = params[:page] ? params[:page] : 1

    holopics = []

    holopics = Holopic.order('id DESC').paginate(page: page, per_page: per_page)

    render json: { result: { holopics: holopics, page: page} }, status: 200
  end

	private 

	  def holopics_params
	    params.permit(:image)
	  end
end