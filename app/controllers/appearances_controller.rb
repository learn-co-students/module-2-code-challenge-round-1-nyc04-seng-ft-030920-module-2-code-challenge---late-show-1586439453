class AppearancesController < ApplicationController
    def new
        @errors = flash[:errors]
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.save
            @appearance.save
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
