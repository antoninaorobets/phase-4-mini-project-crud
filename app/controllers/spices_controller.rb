class SpicesController < ApplicationController
    def index
        render json: Spice.all
    end

    def create
        render json: Spice.create(spice_parans), status: :created
    end

    def update
        spice = Spice.find(params[:id])
        spice.update(spice_parans)
        render json: spice
    end

    def destroy
        spice = Spice.find(params[:id])
        spice.destroy
    end

    private
    def spice_parans
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
