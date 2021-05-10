class AchievementsController < ApplicationController
    def index
        achievements = Achievements.all 
        render json: achievements
    end
    
    def show
        achievement = find_achieve
        render json: achievement
    end
    
    def new
        achievement = Achievement.new(achievement_params)
        render json: achievement
    end

    def create 
        achievement = Achievement.create(achievement_params)
        render json: achievement
    end

    private
        def achievement_params
            params.require(:achievement).permit(:description, :character_id)
        end

        def find_achieve
            achieve = Achievement.find_by(id: params[:id])
        end

end