class AppearancesController < ApplicationController
  
  def index
    @appearances = Appearance.all 
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def new
    @appearance = Appearance.new 
  end

  def create 
    @appearance = Appearance.create(appearance_parameters)
  if @appearance.valid? 
    
    redirect_to episode_path(@appearance.episode_id)

   else  
     flash[:errors] = @appearance.errors.full_messages
     redirect_to "/appearances/new "
   end 
  end 

  def edit
  end
private 


  def appearance_parameters
    params.require(:appearance).permit(:guest_id , :episode_id , :rating )
  end 
end
