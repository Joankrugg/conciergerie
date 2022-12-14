class MegeveVipsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @megeve_vip = MegeveVip.new
  end

  def new_en
    @megeve_vip = MegeveVip.new
  end

  def create
    @megeve_vip = MegeveVip.new(megeve_vip_params)
    if @megeve_vip.save
      MegeveVipMailer.creation(@megeve_vip).deliver_now
      redirect_to le_soleil_d_or_path
    else
    render :new
    end
  end

  def show
  end

  private

  def megeve_vip_params
    params.require(:megeve_vip).permit(:email, :phone, :name, :first_name, best_way_ids: [], best_moment_ids: [])
  end
end
