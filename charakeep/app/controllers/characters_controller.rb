class CharactersController < ApplicationController
    def index
        characters = Character.all 
        render json: characters
    end

    def show
        character = find_char
        render json: character
    end

    def new
        character = Character.new(character_params)
        render json: character
    end

    def create 
        character = Character.create(character_params)
        render json: character
    end

    def edit
        character = find_char
        render json: character
    end

    def update
        character = find_char
        character.update
        render json: character    
    end

    def delete 
        character = find_char
        character.delete
        render json: character
    end

private
    def character_params
       params.require(:character).permit(:name, :image, :history, :level, :user_id, :achievement_id, :stat_id, race_id, dndclass_id)
    end

    def find_char
        character = Character.find_by(id: params[:id])
    end

end