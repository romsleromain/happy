class ProfilesController < ApplicationController


  def show
    @profile = current_talent
  end

  def edit
    @profile = current_talent
  end

  def update
    @profile = current_talent
    if @profile.update(talent_params)
      # TalentMailer.welcome(self).deliver_now
      redirect_to profile_path(@profile)
    else
      render :edit
    end
  end

  private

  def talent_params
    params.require(:talent).permit(:email, :first_name, :last_name, :position_id, :experience, :avatar)
  end

end
