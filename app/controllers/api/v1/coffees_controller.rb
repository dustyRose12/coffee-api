class Api::V1::CoffeesController < ApplicationController

  def index
    @coffees = Coffee.all
  end

   def create
    @coffee = Coffee.new(
                                        blend: params[:blend],
                                        origin: params[:origin],
                                        variety: params[:variety],
                                        notes: params[:notes]
                                        )
    @coffee.save
    render :show
    
  end

  def show
    @coffee = Coffee.find(params[:id])
  end

  def update
    @coffee = Coffee.find(params[:id])

    @coffee.assign_attributes(
                                    blend: params[:blend],
                                    origin: params[:origin],
                                    variety: params[:variety],
                                    notes: params[:notes]
                                    )
    @coffee.save
    render :show

  end

  def destroy
    coffee = Coffee.find(params[:id])
    coffee.destroy
    render json: {message: "coffee destroyed"}, code: 200


  end
end
