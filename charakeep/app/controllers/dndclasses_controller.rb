class DndclassesController < ApplicationController
    def index
        dndclass = Dndclass.all 
        render json: dndclass
    end

    def show
        dndclass = Dndclass.find_by(id: params[:id])
        render json: dndclass
    end
end