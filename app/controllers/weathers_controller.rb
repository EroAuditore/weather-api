class WeathersController < ApplicationController
    #before_action :set_weather, only: [:edit, :update, :show, :destory]
    #list all weather
    def index
        @weathers = Weather.all

        render json: @weathers
    end
    #get weather/id
    def show
        @weathers
        
    end

    #post /weather
    def create
        @weather = Weather.new(weather_params)
        @weather.location = Location.new(location_params)

        if @weather.save
            
            render json: @weather, status: :created, location: @weather
        else
            render json: @weather.errors, status: :unprocessable_entity
        end
    end

    def latlon
        byebug
        @wheather = Weather.location.by_latlon(params["lat"], params["lon"])
        if !@weather.nil?
            render json: @weather, status: :ok, location: @weather
        else
            render status: :unprocessable_entity
        end
    end

    private

    def weather_params
        params.permit(:date, temperature: [])
    end
    def location_params
        params.require(:location).permit(:lat, :lon, :city, :state)
    end

    def set_weather

        @weather = Weather.find(params[:id])
    end
end
