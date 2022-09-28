class MegeveVipsController < ApplicationController
  def new
    @megeve_vip = MegeveVip.new
  end

  def create
    @megeve_vip = MegeveVip.new(megeve_vip_params)
    if @megeve_vip.save
      MegeveVipMailer.creation(@megeve_vip).deliver_now
      redirect_to root_path
    else
    render :new
    end
  end

  def show
  end

  private

  def megeve_vip_params
    params.require(:megeve_vip).permit(:email, :phone, best_way: [:id], best_moment: [:id])
  end
end
