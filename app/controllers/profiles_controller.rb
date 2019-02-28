class ProfilesController < ApplicationController

  def show
    @profile = current_talent
  end

  def edit
    @profile = current_talent
  end

  def update
    @profile = current_talent
    current_talent.values.destroy_all

    values_array = params[:talent][:value_ids]
    if values_array.present?
      @values = values_array.map do |id|
        Value.find(id)
      end
      @values.each do |value|
        TalentValue.create(talent: current_talent, value: value)
      end
    end

    if @profile.update(talent_params)
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
