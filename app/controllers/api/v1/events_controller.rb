class Api::V1::EventsController < Api::V1::ApiController

  def create
    event = Event.new(event_params)

    if event.save
      render json: { result: { event: event } }, status: 201
    else 
      render json: { errors: { internal: event.errors } }, :status => 500
    end
  end


  private 

    def event_params
      params.permit(:name)
    end
end