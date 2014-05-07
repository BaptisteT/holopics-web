class HolopicsController < Api::V1::ApiController

	def create
    holopic = Holopic.new(holopics_params)

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

    holopics = Holopic.paginate(page: page, per_page: per_page).order('id DESC')

    render json: { result: { holopics: holopics } }, status: 200
  end

	private 

	  def holopics_params
	    params.permit(:image)
	  end
end