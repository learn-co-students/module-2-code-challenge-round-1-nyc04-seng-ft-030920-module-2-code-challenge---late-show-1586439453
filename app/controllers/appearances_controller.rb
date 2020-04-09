class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def new
        @appearance = Appearance.new
        @error = flash[:error]
    end

    def create
        @appearance = Appearance.create(params.require(:appearance).permit(:rating, :guest_id, :episode_id))
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:error] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end
end
