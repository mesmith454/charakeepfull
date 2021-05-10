class StatsController < ApplicationController
    def index
        stats = Stat.all 
        render json: stats
    end

    def show
        stat = find_stat
        render json: stat
    end
    
    def edit
        stat = find_stat
    end

    def update
        stat = find_stat
        stat.update
        render json: stat   
    end

    def new 
        stat = Stat.new(stat_params)
    end

    def create
        stat = Stat.create(stat_params)
        render json: stat
    end 

    private

        def stat_params
            params.require(:stat).permit(:agility, :charisma, :dexterity, :intelligence, :strength, :wisdom, :character_id)
        end

        def find_stat
            stat = Stat.find(params[:id])
        end
end