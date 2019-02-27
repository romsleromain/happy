class ProfilesController < ApplicationController

  def show

  end

  def edit
    @profile = current_talent
  end

  def update
    # @profile = current_talent
    # @profile.update(params[:talent])
  end


  private

  def talent_params
    params.require(:talent).permit(:email, :first_name, :last_name, :position, :experience, :avatar)
  end

end
