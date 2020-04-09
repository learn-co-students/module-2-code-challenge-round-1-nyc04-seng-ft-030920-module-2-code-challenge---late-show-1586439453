class AppearancesController < ApplicationController

    def index
      @appearances = Appearance.all
    end

    def new
        @appearance = Appearance.new
    end 

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.valid?
            @appearance.save
            redirect_to @appearance.episode
        else 
            render :new 
        end
    end 

    def show
        @appearance = Appearance.find(params[:id])
    end 


    private

    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end 

  end
  